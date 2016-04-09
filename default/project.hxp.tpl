import lime.project.*;

class Project extends HXProject
{

	public function new()
	{
		super();

		meta = { packageName: ${PROJECT_NAME}, company: "HaxeFlixel", version: "0.0.1" };

		app = { main: "Main", path: "Export", file: ${PROJECT_NAME}, preloader: "flixel.system.FlxPreloader", swfVersion:  11.8 };

		defines.set("SWF_VERSION", "11.8");


		sources.push("source");

		// put haxe library names you want to use below
		var libs = ["flixel", /*"flixel-addons",*/ /*"flixel-ui",*/ /*"nape"*/];
		for (l in libs)
			haxelibs.push(new Haxelib (l));

		includeAssets("assets");

		window.width = $ {WIDTH};
		window.height = $ {HEIGHT};
		window.fps = 60;
		window.background = 0x000000;
		window.hardware = true;
		window.vsync = true;

		if (target == Platform.HTML5)
		{
			window.resizable = false;
		}

		// Optimise inputs, be careful you will get null errors if you don't use conditionals in your game
		if (platformType == PlatformType.DESKTOP)
		{
			window.orientation = lime.project.Orientation.LANDSCAPE;
			window.fullscreen = false;
			window.resizable = true;
			haxedefs["FLX_NO_TOUCH"] = true;
		}
		if (platformType == PlatformType.MOBILE)
		{
			window.orientation = lime.project.Orientation.LANDSCAPE;
			window.fullscreen = true;
			window.width = 0;
			window.height = 0;
			haxedefs["FLX_NO_MOUSE"] = true;
			haxedefs["FLX_NO_KEYBOARD"] = true;
		}
		// Disable gamepads
		// haxedefs["FLX_NO_GAMEPAD"] = true;

		if (!debug)
		{
			haxedefs["FLX_NO_DEBUG"] = true;
			haxedefs["NAPE_RELEASE_BUILD"] = true;
		}

		// Enable the Flixel core recording system
		// haxedefs["FLX_RECORD"] = true;

		// Disable the right and middle mouse buttons
		// haxedefs["FLX_NO_MOUSE_ADVANCED"] = true;

		// Disable the native cursor API on Flash
		// haxedefs["FLX_NO_NATIVE_CURSOR"] = true;

		// Disable the Flixel core sound tray
		// haxedefs["FLX_NO_SOUND_TRAY"] = true;

		// Disable the Flixel sound management code
		// haxedefs["FLX_NO_SOUND_SYSTEM"] = true;

		// Disable the Flixel core focus lost screen
		// haxedefs["FLX_NO_FOCUS_LOST_SCREEN"] = true;
	}
}