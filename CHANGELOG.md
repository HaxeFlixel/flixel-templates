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
* Removed unnecssary code from `Main.hx`
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
