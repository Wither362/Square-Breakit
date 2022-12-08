package stuff;

import flixel.FlxSprite;
import flixel.FlxG;

class Ball extends FlxSprite {
	/**
	 * The type of ball `this` FlxSprite is
	 */
	public var type(default, set):String = '';

	static inline final BALL:String = 'ball';

	/**
	 * The texture used by `this` ball
	 */
	@:isVar
	public var texture(get, set):String;

	public function new(type:String = 'yellowball') {
		set_type(this.type = type);

		/*var file:Dynamic = Paths.image('balls/base/' + texture);

		loadGraphic(file);

		loadGraphic(file, false, Math.floor(file.width - 30), Math.floor(file.height - 30));*/

		width = 10;
		height = 10;
		super();
	}

	private function set_type(v:String):String {
		var tetetet:String = 'balls/base/';
		switch (v) {
			case 'basketball':
				tetetet += 'basketball';
			case 'blueball':
				tetetet += 'blue';
			case 'cannonball':
				tetetet += 'cannon';
			case 'magnetball':
				tetetet += 'magnet';
			case 'miniorangeball':
				tetetet += 'mini orange';
			case 'orangeball':
				tetetet += 'orange';
			case 'plasmaball':
				tetetet += 'plasma';
			case 'sniperball':
				tetetet += 'sniper';
			case 'toxicball':
				tetetet += 'toxic';
			case 'yellowball':
				tetetet += 'yellow';
			default:
				trace("something went wrong with the type");
		}
		tetetet += '-$BALL';
		loadGraphic(Paths.image(tetetet));

		loadGraphic(Paths.image(tetetet), false, Std.int(width), Std.int(height));
		return type = v;
	}

	private function get_texture():String {
		return texture + ' $BALL';
	}

	private function set_texture(v:String):String {
		return texture = v;
	}
}
