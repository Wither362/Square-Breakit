package;

import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup;
import stuff.Ball;

class PlayState extends FlxState {
	var initied:Bool = false;
	var balls:FlxTypedSpriteGroup<Ball>;

	override function create() {
        var sprite = new FlxSprite().makeGraphic(FlxG.width - 10, FlxG.height - 10, FlxColor.GREEN);
        add(sprite);
		super.create();
	}

	override function update(elapsed:Float) {
		super.update(elapsed);
	}
}
