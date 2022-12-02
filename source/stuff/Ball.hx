package stuff;

import flixel.FlxSprite;

class Ball extends FlxSprite {
    var type:String = '';
    var texture:String = '';

    static inline final BALL:String = 'ball';

    public function setType(v:String) {
        switch(v) {
            case 'basketball':
                loadGraphic(Paths.image('balls/base/basketball' + '' + '$BALL')); //idk if it can have spaces
            case 'blueball':
                loadGraphic(Paths.image('balls/base/blue' + '' + '$BALL'));
            case 'cannonball':
                loadGraphic(Paths.image('balls/base/cannon' + '' + '$BALL'));
            case 'magnetball':
                loadGraphic(Paths.image('balls/base/magnet' + '' + '$BALL'));
            case 'miniorangeball':
                loadGraphic(Paths.image('balls/base/mini' + '' + 'orange' + '' + '$BALL'));
            case 'orangeball':
                loadGraphic(Paths.image('balls/base/orange' + '' + '$BALL'));
            case 'plasmaball':
                loadGraphic(Paths.image('balls/base/plasma' + '' + '$BALL'));
            case 'sniperball':
                loadGraphic(Paths.image('balls/base/sniper' + '' + '$BALL'));
            case 'toxicball':
                loadGraphic(Paths.image('balls/base/toxic' + '' + '$BALL'));
            case 'yellowball':
                loadGraphic(Paths.image('balls/base/yellow' + '' + '$BALL'));
            default:
                trace("something went wrong with the type");
        }
    }
}
