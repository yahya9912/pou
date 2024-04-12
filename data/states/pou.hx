import flixel.addons.display.FlxBackdrop;
import funkin.backend.utils.DiscordUtil;
import funkin.menus.ModSwitchMenu;
import lime.app.Application;
import flixel.util.FlxAxes;
import lime.graphics.Image;
import flixel.text.FlxText;
import openfl.Lib;

function create() {
    window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('ico'))));
    window.title = "Pou";
    FlxG.mouse.useSystemCursor = true;
    DiscordUtil.changePresence("Playing Pou", null);
    FlxG.sound.playMusic(Paths.music("pou"));

	bg = new FlxSprite().loadGraphic(Paths.image('white men'));
	bg.setGraphicSize(FlxG.width, FlxG.height);
    bg.screenCenter();
	bg.scrollFactor.set();
	add(bg);

    
    bgSprite = new FlxBackdrop(Paths.image("bg"), 0x11, 0, 0);
    bgSprite.velocity.set(100, 100);
    add(bgSprite);
    
    pou = new FlxSprite().loadGraphic(Paths.image('pou'));
	//pou.setGraphicSize(FlxG.width, FlxG.height); //HUGE ASS POUUU
    pou.screenCenter();
    pou.y -= 53;
    pou.x -= 8;
	add(pou);
    
    sad = new FunkinText(574, 13, 0, 'Pou');
    sad.setFormat("fonts/Pou.ttf", 60, FlxColor.BLACK);
	add(sad);

    play = new FunkinText(595, 520, 0, 'Play');
    play.setFormat("fonts/Pou.ttf", 30, FlxColor.BLACK);
	add(play);

    android = new FlxSprite().loadGraphic(Paths.image('buttons/android'));
    android.y = 591;
    android.x = 505;
    add(android);

    apple = new FlxSprite().loadGraphic(Paths.image('buttons/apple'));
    apple.y = 591;
    apple.x = 646;
    add(apple);

    sudoku = new FlxSprite().loadGraphic(Paths.image('sudoku'));
    add(sudoku);


}

function update(elapsed:Float) {
	if (controls.SWITCHMOD) {
		persistentUpdate = false;
		openSubState(new ModSwitchMenu());
	}


}

/*
function update(elapsed){
    if (FlxG.keys.justPressed.F5)
        {
        FlxG.resetState();
        }
}
*/