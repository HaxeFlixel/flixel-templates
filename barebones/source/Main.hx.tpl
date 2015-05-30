package;

import flash.display.Sprite;
import flixel.FlxGame;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(${WIDTH}, ${HEIGHT}, PlayState));
	}
}