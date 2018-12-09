var tempJoyStick = 0;

if (device_mouse_check_button(tempJoyStick, mb_left))
{
	var tempDir = point_direction(guiX, guiY, device_mouse_x_to_gui(tempJoyStick), device_mouse_y_to_gui(tempJoyStick));
	var tempDistance = screenScale * (point_distance(guiX, guiY, device_mouse_x_to_gui(tempJoyStick), device_mouse_y_to_gui(tempJoyStick)));
	 
	if (tempDistance < sprite_get_width(sprJoyStick)/2*screenScale)
	{
		joyStickActive = true;
		image_alpha = lerp(image_alpha, 0.75, 0.5);
		
		dir = tempDir;
		
		xDir = device_mouse_x_to_gui(tempJoyStick)-guiX;
		yDir = device_mouse_y_to_gui(tempJoyStick)-guiY;
		
	}
	
	if (joyStickActive && tempDistance > screenScale * sprite_get_width(sprJoyStickButton)/2)
	{
		#region actions
		
		switch (action)
		{
			case actions.playerMove:
				if(instance_exists(objPlayer))
				{
					objPlayer.speed = 3;
				}
				break;
			
			case actions.playerAttack:
				with(objPlayer)
				{
					var bullet = instance_create_layer(x, y, "Projectile", objBullet);
					with(bullet)
					{
						direction = objJoyStick.dir;
						image_angle = objJoyStick.dir;
					}
					
				}
				break;
		}
		
		#endregion actions
	}
	
	if (joyStickActive && point_distance(guiX, guiY, device_mouse_x_to_gui(tempJoyStick), device_mouse_y_to_gui(tempJoyStick)) > screenScale * sprite_get_width(sprJoyStick)/2)
	{
		dir = tempDir;
		
		xDir = screenScale * lengthdir_x(sprite_get_width(sprJoyStick)/2, tempDir);
		yDir = screenScale * lengthdir_y(sprite_get_height(sprJoyStick)/2, tempDir);
	}
	
} else
{
	joyStickActive = false;
	xDir = 0;
	yDir = 0;
	image_alpha = lerp(image_alpha, 0, 0.05);
}

