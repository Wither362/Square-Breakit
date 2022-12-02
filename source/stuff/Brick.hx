package stuff;

import flixel.FlxSprite;

class Brick extends FlxSprite {
	var normalBricks:Array<String> = []; // this bricks dont do nothing special
	var texture(default, set):String = '';
	var brickType(default, set):String = '';

    private function set_brickType(v:String):String {
        return brickType = v;
    }
    private function set_texture(v:String):String {
        return texture = v;
    }
}
