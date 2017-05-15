2.4.0 (May 13, 2017)
------------------------------
* Added hxcpp launch configs to `launch.json`
* Fixed the `"search.exclude"` glob pattern in `settings.json` (#32)
* Fixed the display config paths on Linux in `settings.json` (#33)

2.3.2 (April 21, 2017)
------------------------------
* Fixed `isBuildCommand` being used twice in `tasks.json`

2.3.1 (April 7, 2017)
------------------------------
* Use vshaxe 1.5.0's problem matcher in `tasks.json` (VSCode 1.11.0)

2.3.0 (March 27, 2017)
------------------------------
* Removed `MenuState.hx`
* Removed unused imports

2.2.2 (March 6, 2017)
------------------------------
* Updated `version` in the VSCode `tasks.json` to 2.0.0 (VSCode 1.10.0)

2.2.1 (February 15, 2017)
------------------------------
* Added the Haxe Extension Pack to VSCode workspace recommendations

2.2.0 (February 1, 2017)
------------------------------
* Changed the initial state from `MenuState` to `PlayState` (#30)
* Added a Flash debug config to VSCode's `launch.json`
* Added a search exclude filter to VSCode's `settings.json` 

2.1.0 (September 8, 2016)
------------------------------
* Added template files for Visual Studio Code (requires flixel-tools 1.2.0)
* Updated the IntelliJ IDEA template (#28)

2.0.2 (July 10, 2016)
------------------------------
* Compatibility with flixel 4.1.0
* `Main.hx`: changed `Width` and `Height` arguments to 0 (#25)

2.0.1 (March 2, 2016)
------------------------------
* `.fdz` template: fixed the `update()` signature for HaxeFlixel 4.0.0

2.0.0 (February 16, 2016)
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

1.0.2 (April 24, 2014)
------------------------------
* Compatibility with flixel 3.3.0
* Project.xml:
 * Removed the openfl include
 * Increased the swf version to 11.8
* Added AssetPaths.hx to all templates
* Moved GameClass.hx logic into Main.hx

1.0.1 (February 6, 2014)
------------------------------
* Compatibility with flixel 3.1.0
* Added pregenerated templates
* Added 'barebones' template
* Improvements to the Project.xml, particularly the window-tags

1.0.0 (December 28, 2013)
------------------------------
* Initial haxelib release
