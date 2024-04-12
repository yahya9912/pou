import funkin.game.GameOverSubstate;
import funkin.menus.PauseSubState;
import funkin.options.Options;
import lime.graphics.Image;
import flixel.FlxState;
import funkin.backend.system.framerate.Framerate;
import openfl.Lib;

static var initialized:Bool = false;

static var redirectStates:Map<FlxState, String> = [
    TitleState => 'pou',
];

function new() {
    FlxG.mouse.useSystemCursor = true;
    Framerate.debugMode = 0;
}



function preStateSwitch() {
    FlxG.camera.bgColor = 0xFF000000;

	if (!initialized) {
		initialized = true;
		FlxG.game._requestedState = new ModState('pou');
	} else
		for (redirectState in redirectStates.keys())
			if (FlxG.game._requestedState is redirectState)
				FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}

function destroy()
    FlxG.camera.bgColor = 0xFF000000;

function destroy() FlxG.camera.bgColor = 0xFF000000;

/*
function update(elapsed){
    if (FlxG.keys.justPressed.F5)
        {
        FlxG.resetState();
        }
}
*/