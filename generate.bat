rmdir pregenerated /s /q

md pregenerated
cd pregenerated

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

pause
