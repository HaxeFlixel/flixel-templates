package;

import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;

class Main extends Sprite
{
    public function new()
    {
        super();
        addChild(new FlxGame(Std.int(Lib.current.stage.width), Std.int(Lib.current.stage.height), MenuState));
    }
}