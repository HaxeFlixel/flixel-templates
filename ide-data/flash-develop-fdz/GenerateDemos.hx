class GenerateDemos {
	static function main() {
		trace("Running...");

		/// MODULES
		var fs = require('fs'), path = require('path');

		/// HELPERS
		function deleteFolderRecursive(path: String) {
			if ( fs.existsSync(path) ) {
				fs.readdirSync(path).forEach(function(file, index) {
					var curPath : String = path + "/" + file;
					if (fs.lstatSync(curPath).isDirectory()) { // recurse
						deleteFolderRecursive(curPath);
					} else { // delete file
						fs.unlinkSync(curPath);
					}
				});
				fs.rmdirSync(path);
			}
		};

		function getDirectories(srcpath) {
			return fs.readdirSync(srcpath).filter(function(file) {
				return fs.statSync(path.join(srcpath, file)).isDirectory() && file != ".git";
			});
		};

		function copyRecursiveSync(src, dest) {
			var exists : Bool = fs.existsSync(src);
			var stats = exists && fs.statSync(src);
			var isDirectory : Bool = exists && stats.isDirectory();
			if (exists && isDirectory) {
				fs.mkdirSync(dest);
				fs.readdirSync(src).forEach(function(childItemName) {
					copyRecursiveSync(path.join(src, childItemName),
									  path.join(dest, childItemName));
				});
			} else {
				fs.writeFileSync(dest, fs.readFileSync(src));
			}
		};

		function fileExists(filePath) {
			try {
				return fs.statSync(filePath).isFile();
			} catch (err) {
				return false;
			}
		};

		// MAIN
		deleteFolderRecursive("$(BaseDir)");
		var kinds = getDirectories(".").sort();
		fs.mkdirSync("$(BaseDir)");
		var projectsPath = path.join("$(BaseDir)", "Projects");
		fs.mkdirSync(projectsPath);
		trace(kinds);

		var index : Int = 900;
		for (kind in kinds) {
			var projects = getDirectories(kind).sort();
			trace(kind, projects);
			for (project in projects) {
				trace(kind + "-" + project);
				index++;
				var name : String = index + " HaxeFlixel - " + kind + " " + project;
				var projectPath = path.join(projectsPath, name);
				copyRecursiveSync(path.join(kind, project), projectPath);
				fs.writeFileSync(path.join(projectPath, "Project.png"), fs.readFileSync("Project.png"));
				// Case-sensitiveness fix
				if (fileExists(path.join(projectPath, "project.xml"))) {
					fs.renameSync(path.join(projectPath, "project.xml"), path.join(projectPath, "Project.xml"));
				}
				var template : String = "" + fs.readFileSync(path.join(projectPath, "Project.xml"));
				template = template.replace(~/company = \"[A-z0-9]*\"/i, 'company="$(DefaultUser)"');
				template = template.replace(~/file=\"[A-z0-9]*\"/i, 'file="$(ProjectID)"');
				template = template.replace(~/title=\"[A-z0-9]*\"/i, 'title="$(ProjectName)"');
				fs.writeFileSync(path.join(projectPath, "Project.xml"), template);
				fs.renameSync(path.join(projectPath, "Project.xml"), path.join(projectPath, "Project.xml.template"));
				/// Project.hxproj
				fs.renameSync(path.join(projectPath, project + ".hxproj"), path.join(projectPath, "Project.hxproj"));
				var hxproj : String = "" + fs.readFileSync(path.join(projectPath, "Project.hxproj"));
				hxproj = hxproj.replace('</compileTargets>', '  <compile path="source\\Main.hx" />\r\n  </compileTargets>');
				hxproj = hxproj.replace('<!-- example: <compile path="..." /> -->', '');
				fs.writeFileSync(path.join(projectPath, "Project.hxproj"), hxproj);
				/// Project.txt
				var description : String = "A HaxeFlixel " + kind + " " + project + " demo";
				fs.writeFileSync(path.join(projectPath, "Project.txt"), description);
			}
		}

		trace("Done.");
		trace("Please, use Send To -> Zip Archive on /flixel-demos/$(BaseDir) as FlxDemos.fdz to complete operation.");
	}
}
