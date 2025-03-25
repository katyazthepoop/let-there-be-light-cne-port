var movePower = 30;
var angle = 0;
var movingAble = true;

function postUpdate(dt) {
    if (movingAble)
    {
        camGame.angle = CoolUtil.fpsLerp(camGame.angle, 0, 0.125);
        switch(strumLines.members[curCameraTarget].characters[0].getAnimName()) {
            case "singLEFT": 
                camFollow.x -= movePower;
                camGame.angle = CoolUtil.fpsLerp(camGame.angle, angle, 0.1);
            case "singDOWN":
                camFollow.y += movePower;
                camGame.angle = CoolUtil.fpsLerp(camGame.angle, 0, 0.1);
            case "singUP":
                camFollow.y -= movePower;
                camGame.angle = CoolUtil.fpsLerp(camGame.angle, 0, 0.1);
            case "singRIGHT":
                camFollow.x += movePower;
                camGame.angle = CoolUtil.fpsLerp(camGame.angle, -angle, 0.1);
    }
    }
}