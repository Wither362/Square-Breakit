package stuff;

import flixel.FlxSprite;

class Ball extends FlxSprite {
    var type:String = '';
    var texture:String = '';

    static inline final BALL:String = 'ball';

    public function setType(v:String) {
        switch(v) {
            case 'basketball':
                loadGraphics(Paths.image('balls/base/basketball' + '' + '$BALL')); //idk if it can have spaces
            case 'blueball':
                loadGraphics(Paths.image('balls/base/blue' + '' + '$BALL'));
            case 'cannonball':
                loadGraphics(Paths.image('balls/base/cannon' + '' + '$BALL'));
            case 'magnetball':
                loadGraphics(Paths.image('balls/base/magnet' + '' + '$BALL'));
            case 'miniorangeball':
                loadGraphics(Paths.image('balls/base/mini' + '' + 'orange' + '' + '$BALL'));
            case 'orangeball':
                loadGraphics(Paths.image('balls/base/orange' + '' + '$BALL'));
            case 'plasmaball':
                loadGraphics(Paths.image('balls/base/plasma' + '' + '$BALL'));
            case 'sniperball':
                loadGraphics(Paths.image('balls/base/sniper' + '' + '$BALL'));
            case 'toxicball':
                loadGraphics(Paths.image('balls/base/toxic' + '' + '$BALL'));
            case 'yellowball':
                loadGraphics(Paths.image('balls/base/yellow' + '' + '$BALL'));
            default:
                trace("something went wrong with the type");
        }
    }
}
