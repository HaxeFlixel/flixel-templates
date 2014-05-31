<?xml version="1.0" encoding="utf-8"?>
<project>
	<!------------------------------APPLICATION SETTINGS---------------------------->
	
	<app title="${PROJECT_NAME}" file="${PROJECT_NAME}" main="Main" version="0.0.1" company="HaxeFlixel" />
	
	<!--The flixel preloader is not accurate in Chrome. You can use it regularly if you embed the swf into a html file
	<!--or you can set the actual size of your file manually at "FlxPreloaderBase-onUpdate-bytesTotal"!-->
	<app preloader="flixel.system.FlxPreloader" />
	
	<!--Minimum without FLX_NO_GAMEPAD: 11.8, without FLX_NO_NATIVE_CURSOR: 11.2 -->
	<set name="SWF_VERSION" value="11.8" />
	
	<!--------------------------------WINDOW SETTINGS------------------------------->
	
	<!--These window settings apply to all targets-->
	<window width="${WIDTH}" height="${HEIGHT}" fps="60" background="#000000" hardware="true" vsync="true" />
	
	<!--Web-specific-->
	<window if="web" orientation="portrait"  />
	
	<!--Desktop-specific-->
	<window if="desktop" orientation="landscape" fullscreen="false" resizable="true" />
	
	<!--Mobile-specific-->
	<window if="mobile" orientation="landscape" fullscreen="true" width="0" height="0" />
	
	<!--------------------------------PATHS SETTINGS-------------------------------->
	
	<set name="BUILD_DIR" value="export" />
	<classpath name="source" />
	<assets path="assets" />
	
	<!--------------------------------LIBRARIES------------------------------------->

	<haxelib name="flixel"/>
	
	<!--In case you want to use the addons package-->
	<!--haxelib name="flixel-addons" /-->
	
	<!--In case you want to use the ui package-->
	<!--haxelib name="flixel-ui"/-->
	
	<!--In case you want to use nape with flixel-->
	<!--haxelib name="nape" /-->
	
	<!--------------------------------HAXEDEFINES----------------------------------->
	
	<!--Enable the Flixel core recording system-->
	<!--haxedef name="FLX_RECORD" /-->
	
	<!--Disable the right and middle mouse buttons-->
	<!--haxedef name="FLX_NO_MOUSE_ADVANCED" /-->
	
	<!--Disable the Native cursor api for Flash target-->
	<!--haxedef name="FLX_NO_NATIVE_CURSOR" /-->
	
	<!--Optimise inputs, be careful you will get null errors if you don't use conditionals in your game-->
	<haxedef name="FLX_NO_MOUSE" if="mobile" />
	<haxedef name="FLX_NO_KEYBOARD" if="mobile" />
	<haxedef name="FLX_NO_TOUCH" if="desktop" />
	<!--haxedef name="FLX_NO_GAMEPAD" /-->
	
	<!--Disable the Flixel core sound tray-->
	<!--haxedef name="FLX_NO_SOUND_TRAY" /-->
	
	<!--Disable the Flixel sound management code-->
	<!--haxedef name="FLX_NO_SOUND_SYSTEM" /-->
	
	<!--Disable the Flixel core focus lost screen-->
	<!--haxedef name="FLX_NO_FOCUS_LOST_SCREEN" /-->
	
	<!--Disable the Flixel core debugger. Automatically gets set whenever you compile in release mode!-->
	<haxedef name="FLX_NO_DEBUG" unless="debug" />
	
	<!--Enable this for Nape release builds for a serious peformance improvement-->
	<haxedef name="NAPE_RELEASE_BUILD" unless="debug" />
	
	<!--------------------------------CUSTOM---------------------------------------->
	
	<!--Place custom nodes like icons here (higher priority to override the HaxeFlixel icon)-->
</project>
