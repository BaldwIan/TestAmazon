// Draw joystick accounting for scale changes
draw_sprite_ext(sprJoyStick, 0, guiX, guiY, global.screenScale, global.screenScale, 0, c_white, image_alpha);
draw_sprite_ext(sprJoyStickButton, 0, guiX + xDir, guiY + yDir, global.screenScale, global.screenScale, 0, c_white, image_alpha);
