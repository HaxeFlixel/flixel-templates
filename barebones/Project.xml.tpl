<?xml version="1.0" encoding="utf-8"?>
<project>
	<!-- _________________________ Application Settings _________________________ -->

	<app title="${PROJECT_NAME}" file="${PROJECT_NAME}" main="Main" version="0.0.1" company="HaxeFlixel" />
	<app preloader="flixel.system.FlxPreloader" />
	<set name="SWF_VERSION" value="11.8" />

	<!-- ____________________________ Window Settings ___________________________ -->

	<window width="${WIDTH}" height="${HEIGHT}" fps="60" background="#000000" hardware="true" vsync="true" />

	<window if="web" orientation="portrait"  />
	<window if="desktop" orientation="landscape" fullscreen="false" resizable="true" />
	<window if="mobile" orientation="landscape" fullscreen="true" width="0" height="0" />

	<!-- _____________________________ Path Settings ____________________________ -->

	<set name="BUILD_DIR" value="export" />
	<classpath name="source" />
	<assets path="assets" />

	<!-- _______________________________ Libraries ______________________________ -->

	<haxelib name="flixel" />
	<!--<haxelib name="flixel-addons" />-->
	<!--<haxelib name="flixel-ui" />-->
	<!--<haxelib name="nape" />-->

	<!-- ______________________________ Haxedefines _____________________________ -->

	<haxedef name="FLX_NO_DEBUG" unless="debug" />
	<haxedef name="NAPE_RELEASE_BUILD" unless="debug" />

	<haxedef name="FLX_NO_MOUSE" if="mobile" />
	<haxedef name="FLX_NO_KEYBOARD" if="mobile" />
	<haxedef name="FLX_NO_TOUCH" if="desktop" />
</project>
