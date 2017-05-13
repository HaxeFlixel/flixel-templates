2.4.0
------------------------------
* Added hxcpp launch configs to `launch.json`
* Fixed the `"search.exclude"` glob pattern in `settings.json` (#32)
* Fixed the display config paths on Linux in `settings.json` (#33)

2.3.2
------------------------------
* Fixed `isBuildCommand` being used twice in `tasks.json`

2.3.1
------------------------------
* Use vshaxe 1.5.0's problem matcher in `tasks.json` (VSCode 1.11.0)

2.3.0
------------------------------
* Removed `MenuState.hx`
* Removed unused imports

2.2.2
------------------------------
* Updated `version` in the VSCode `tasks.json` to 2.0.0 (VSCode 1.10.0)

2.2.1
------------------------------
* Added the Haxe Extension Pack to VSCode workspace recommendations

2.2.0
------------------------------
* Changed the initial state from `MenuState` to `PlayState` (#30)
* Added a Flash debug config to VSCode's `launch.json`
* Added a search exclude filter to VSCode's `settings.json` 

2.1.0
------------------------------
* Added template files for Visual Studio Code (requires flixel-tools 1.2.0)
* Updated the IntelliJ IDEA template (#28)

2.0.2
------------------------------
* Compatibility with flixel 4.1.0
* `Main.hx`: changed `Width` and `Height` arguments to 0 (#25)

2.0.1
------------------------------
* `.fdz` template: fixed the `update()` signature for HaxeFlixel 4.0.0

2.0.0
------------------------------
* Compatibility with flixel 4.0.0
* The following defines are now enabled by default in the `Project.xml`:
 * `<haxedef name="FLX_NO_MOUSE" if="mobile" />`
 * `<haxedef name="FLX_NO_KEYBOARD" if="mobile" />`
 * `<haxedef name="FLX_NO_TOUCH" if="desktop" />`
* Removed unnecessary code from `Main.hx`
* Removed trailing whitespace
* Removed `Reg.hx`
* Removed some comments
* Removed the barebones template
* Default to `<window resizable="false" />` on HTML5

1.0.2
------------------------------
* Compatibility with flixel 3.3.0
* Project.xml:
 * Removed the openfl include
 * Increased the swf version to 11.8
* Added AssetPaths.hx to all templates
* Moved GameClass.hx logic into Main.hx

1.0.1
------------------------------
* Compatibility with flixel 3.1.0
* Added pregenerated templates
* Added 'barebones' template
* Improvements to the Project.xml, particularly the window-tags

1.0.0
------------------------------
* Initial haxelib release
