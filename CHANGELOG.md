2.6.6 (April 17, 2021)
------------------------------
* Added Lime XSD schema references to enable completion
* Added the Red Hat XML extension to VSCode extension recommendations

2.6.5 (April 16, 2020)
------------------------------
* Enabled formatting and import sorting on save in VSCode
* Enabled `"haxe.enableExtendedIndentation"` in VSCode

2.6.4 (March 28, 2020)
------------------------------
* Minor code style update

2.6.3 (August 21, 2019)
------------------------------
* Removed the `diagnosticsPathFilter` from VSCode settings

2.6.2 (May 1, 2019)
------------------------------
* Replaced `nape` in `Project.xml` with `nape-haxe4`

2.6.1 (April 5, 2019)
------------------------------
* Added a second Lime launch config without a `preLaunchTask`

2.6.0 (April 2, 2019)
------------------------------
* Updated launch configs for Lime 7.3.0 and Lime VSCode extension 1.3.0

2.5.5 (February 20, 2019)
------------------------------
* Modernized `launch.json` to use `${workspaceFolder}`

2.5.4 (February 12, 2019)
------------------------------
* Added a Macro launch config to `launch.json`

2.5.3 (July 6, 2018)
------------------------------
* Added Windows/Linux/Mac configs to `launch.json`

2.5.2 (May 2, 2018)
------------------------------
* Added a HTML5 launch config to `launch.json`
* Removed unnecessary problem matchers from `lime test` in `tasks.json`

2.5.1 (April 9, 2018)
------------------------------
* Added problem matchers added in vshaxe 1.11.0

2.5.0 (April 5, 2018)
------------------------------
* Updated the VSCode config for use with the Lime extension
* Disabled `vsync` by default in `Project.xml`

2.4.6 (December 10, 2017)
------------------------------
* Fixed deprecation warnings in the VSCode `tasks.json`

2.4.5 (November 30, 2017)
------------------------------
* Fixed flixel-tools not finding templates if dependencies are missing

2.4.4 (August 31, 2017)
------------------------------
* Removed the deprecated `suppressTaskName` from the VSCode `tasks.json`

2.4.3 (July 14, 2017)
------------------------------
* Updated `tasks.json` for VSCode 1.14.0

2.4.2 (June 19, 2017)
------------------------------
* Reduced VSCode extension recommendations to just vshaxe

2.4.1 (May 15, 2017)
------------------------------
* Fixed the hxcpp launch config paths on Mac and Linux (#34)
* Fixed the display config paths on Mac in `settings.json`

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
