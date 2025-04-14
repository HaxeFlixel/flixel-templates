<?xml version="1.0" encoding="utf-8"?>
<project xmlns="http://lime.openfl.org/project/1.0.4" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://lime.openfl.org/project/1.0.4 http://lime.openfl.org/xsd/project-1.0.4.xsd">

	<!-- _________________________ Application Settings _________________________ -->

	<app title="${PROJECT_NAME}" file="${PROJECT_NAME}" main="Main" version="0.0.1" company="HaxeFlixel" />

	<!--The flixel preloader is not accurate in Chrome. You can use it regularly if you embed the swf into a html file
		or you can set the actual size of your file manually at "FlxPreloaderBase-onUpdate-bytesTotal"-->
	<app preloader="flixel.system.FlxPreloader" />

	<!--Minimum without FLX_NO_GAMEPAD: 11.8, without FLX_NO_NATIVE_CURSOR: 11.2-->
	<set name="SWF_VERSION" value="11.8" />

	<!-- ____________________________ Window Settings ___________________________ -->

	<!--These window settings apply to all targets-->
	<window width="${WIDTH}" height="${HEIGHT}" fps="60" background="#000000" hardware="true" vsync="false" />

	<!--HTML5-specific-->
	<window if="html5" resizable="true" />

	<!--Desktop-specific-->
	<window if="desktop" orientation="landscape" fullscreen="false" resizable="true" />

	<!--Mobile-specific-->
	<window if="mobile" orientation="landscape" fullscreen="true" width="0" height="0" />

	<!-- _____________________________ Path Settings ____________________________ -->

	<set name="BUILD_DIR" value="export" />
	<source path="source" />
	<assets path="assets" />

	<!-- _______________________________ Libraries ______________________________ -->

	<haxelib name="flixel" />

	<!--In case you want to use the addons package-->
	<!--<haxelib name="flixel-addons" />-->

	<!--In case you want to use the ui package-->
	<!--<haxelib name="flixel-ui" />-->

	<!--In case you want to use nape with flixel-->
	<!--<haxelib name="nape-haxe4" />-->

	<!-- ______________________________ Haxedefines _____________________________ -->

	<!--Allows you to use sound paths with no extension, and the default sound type for that
	 	target will be used. If enabled it will use ogg on all targets except flash, which uses mp3.
		If value is set to any string, that is used for the file extension-->
	<!--<haxedef name="FLX_DEFAULT_SOUND_EXT" value="" />-->

	<!--Loads from the specified relative or absolute directory. Unlike other boolean flags, this flag should contain a string value.
		When using assets entirely from outside the build directory, it is wise to disable any 
		<assets> tags in your project.xml, to reduce your total memory-->
	<!--<haxedef name="FLX_CUSTOM_ASSETS_DIRECTORY" value="" />-->

	<!--Remove the legacy health system-->
	<haxedef name="FLX_NO_HEALTH" />
	
	<!--Enable the Flixel core recording system-->
	<!--<haxedef name="FLX_RECORD" />-->

	<!--Disable the right and middle mouse buttons-->
	<!--<haxedef name="FLX_NO_MOUSE_ADVANCED" />-->

	<!--Disable the native cursor API on Flash-->
	<!--<haxedef name="FLX_NO_NATIVE_CURSOR" />-->

	<!--Optimise inputs, be careful you will get null errors if you don't use conditionals in your game-->
	<haxedef name="FLX_NO_MOUSE" if="mobile" />
	<haxedef name="FLX_NO_KEYBOARD" if="mobile" />
	<haxedef name="FLX_NO_TOUCH" if="desktop" />
	<!--<haxedef name="FLX_NO_GAMEPAD" />-->

	<!--Disable the Flixel core sound tray-->
	<!--<haxedef name="FLX_NO_SOUND_TRAY" />-->

	<!--Disable the Flixel sound management code-->
	<!--<haxedef name="FLX_NO_SOUND_SYSTEM" />-->

	<!--Disable the Flixel core focus lost screen-->
	<!--<haxedef name="FLX_NO_FOCUS_LOST_SCREEN" />-->

	<!--Disable the Flixel core debugger. Automatically gets set whenever you compile in release mode!-->
	<haxedef name="FLX_NO_DEBUG" unless="debug" />

	<!--Disable the Flixel save system-->
	<!--<haxedef name="FLX_NO_SAVE" />-->

	<!--Enable this for Nape release builds for a serious peformance improvement-->
	<haxedef name="NAPE_RELEASE_BUILD" unless="debug" />

	<!-- Haxe 4.3.0+: Enable pretty syntax errors and stuff. -->
	<!-- pretty (haxeflixel default), indent, classic (haxe compiler default) -->
	<haxedef name="message.reporting" value="pretty" />

	<!-- _________________________________ Custom _______________________________ -->

	<!--Place custom nodes like icons here-->
</project>
