rmdir pregenerated /s /q

md pregenerated
cd pregenerated

haxelib run flixel-tools tpl -ide fd
cd default
7z a -tzip ../flash-develop.zip
cd ..
rmdir default /s /q

haxelib run flixel-tools tpl -ide subl
cd default
7z a -tzip ../sublime-text.zip
cd..
rmdir default /s /q

haxelib run flixel-tools tpl -ide idea
cd default
7z a -tzip ../intelij-idea.zip
cd..
rmdir default /s /q

cd ..
cd ide-data/flash-develop-fdz
7z a -tzip ../../FlxProject.zip
cd ..\..\
move /y "FlxProject.zip" "pregenerated\FlxProject.fdz"

pause
