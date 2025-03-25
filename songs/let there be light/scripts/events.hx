import flixel.addons.display.FlxBackdrop;
import flixel.addons.display.FlxAxes;
import funkin.game.StrumLine;
import funkin.game.Character;

var light = new FlxSprite().loadGraphic(Paths.image("logo"));
var lightDown = new FlxSprite().loadGraphic(Paths.image("LetThereBeRemaster-downscroll"));
light.alpha = 0;
lightDown.alpha = 0;
light.y = 650;
if (!downscroll) {
    add(light).camera = camHUD;
}
else {
    add(lightDown).camera = camHUD;
}
function create() { 
	introLength = 0;
}

function stepHit(step:Int) {
    switch(curStep) {
        case 824:
        for (i in playerStrums.members) FlxTween.tween(i, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        for (i in cpuStrums.members) FlxTween.tween(i, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(healthBar, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(healthBarBG, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(iconP1, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(iconP2, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(accuracyTxt, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(missesTxt, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        FlxTween.tween(scoreTxt, {alpha: 0}, 1, {ease: FlxEase.smootherStepInOut});
        case 832:
            healthBar.visible = false;
            healthBarBG.visible = false;
            iconP1.visible = false;
            iconP2.visible = false;
            for (strum in cpuStrums) strum.visible = false;
            for (playerStrum in playerStrums) playerStrum.visible = false;
            for (playerStrum in playerStrums) playerStrum.x = ((FlxG.width/2) - (Note.swagWidth * 2)) + (Note.swagWidth * playerStrums.members.indexOf(playerStrum));
            for (strum in cpuStrums) strum.x = ((FlxG.width/9) - (Note.swagWidth * 9)) + (Note.swagWidth * cpuStrums.members.indexOf(strum));
            stage.stageSprites["bg1"].alpha = 0;
            stage.stageSprites["junkfire"].alpha = 0.75;
            stage.stageSprites["Junk"].alpha = 1;
            stage.stageSprites["BackGround"].alpha = 1;
            dad.x = 592;
            dad.y = -351;
            boyfriend.x = 520;
            boyfriend.y = 450;
        case 1087:
            for (playerStrum in playerStrums) playerStrum.visible = true;
            for (i in playerStrums.members) FlxTween.tween(i, {alpha: 1}, 0.5, {ease: FlxEase.smootherStepInOut});
        case 1343:
            light.alpha = 1;
            lightDown.alpha = 1;

            FlxTween.tween(accuracyTxt, {alpha: 1}, 1, {ease: FlxEase.smootherStepInOut});
            FlxTween.tween(missesTxt, {alpha: 1}, 1, {ease: FlxEase.smootherStepInOut});
            FlxTween.tween(scoreTxt, {alpha: 1}, 1, {ease: FlxEase.smootherStepInOut});
        case 1407:
            FlxTween.tween(light, {alpha: 0}, 0.45);
            FlxTween.tween(lightDown, {alpha: 0}, 0.45);
    }
}