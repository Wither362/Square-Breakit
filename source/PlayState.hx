package;

import flixel.group.FlxGroup.FlxTypedGroup;
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
		bgColor = 0;

		super.create();

		balls = new FlxTypedSpriteGroup<Ball>();
		add(balls);

		for(i in 0...10) {
            var sprite = new Ball();
			sprite.screenCenter();
            balls.add(sprite);
		    //add(sprite);

		    sprite.velocity.x = FlxG.random.int(-200, 200);
            sprite.velocity.y = FlxG.random.int(-200, 200);
        }
	}

	override function update(elapsed:Float) {
        balls.forEachAlive(function(sprite:Ball) {
            if (sprite.velocity.x > 0 && sprite.x >= FlxG.width - sprite.width) {
		    	sprite.x = FlxG.width - sprite.width;
		    	sprite.velocity.x *= -1;
		    } else if (sprite.velocity.x < 0 && sprite.x <= 0) {
		    	sprite.x = 0;
		    	sprite.velocity.x *= -1;
		    }

            if (sprite.velocity.y > 0 && sprite.y >= FlxG.height - sprite.height) {
		    	sprite.y = FlxG.height - sprite.height;
		    	sprite.velocity.y *= -1;
		    } else if (sprite.velocity.y < 0 && sprite.y <= 0) {
		    	sprite.y = 0;
		    	sprite.velocity.y *= -1;
		    }
        });

		super.update(elapsed);
	}
}
