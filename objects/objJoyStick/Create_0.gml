enum actions
{
	playerMove,
	playerAttack,
	
}
action = actions.playerAttack;

xDir = 0;
yDir = 0;
dir = 0;

screenScale = objCamera.cwidth / view_get_wport(0);

joyStickActive = false;

var xOffset = screenScale * 32;
var yOffset = screenScale * 32;

guiX = xOffset + sprite_get_width(sprJoyStick)/2;
guiY = objCamera.cheight*2 - yOffset;
