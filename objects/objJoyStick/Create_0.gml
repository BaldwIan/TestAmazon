enum actions
{
	playerMove,
	playerAttack,
	
}
action = actions.playerAttack;

xDir = 0;
yDir = 0;
dir = 0;

joyStickActive = false;
joyStickKey = 0;

var xOffset = global.screenScale * 32;
var yOffset = global.screenScale * 32;

guiX = xOffset + sprite_get_width(sprJoyStick)/2;
guiY = objCamera.cheight*2 - yOffset;
