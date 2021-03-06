var smoothPan = true;

switch (mode)
{
	case cammode.follow_object:
		if (!instance_exists(following)) break;
		xTo = following.x;
		yTo = following.y;
		break;
		
	case cammode.follow_mouse_drag:
		smoothPan = false;
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
	
		if (mouse_check_button(mb_left))
		{
			xTo += (mouseXPrev - mx) / 1920 * cwidth;
			yTo += (mouseYPrev - my) / 1080 * cheight;
		}
		
		mouseXPrev = mx;
		mouseYPrev = my;
		
		break;
		
	case cammode.follow_mouse_border:
		var borderX = cwidth/3;
		var borderY = cheight/3;
		if (!point_in_rectangle(mouse_x, mouse_y, x - borderX, y - borderY, x + borderX, y + borderY))
		{
			xTo = lerp(xTo, mouse_x, 0.05);
			yTo = lerp(yTo, mouse_y, 0.05);
		}
		break;
		
	case cammode.follow_mouse_peak:
		xTo = lerp(following.x, mouse_x, 0.2);
		yTo = lerp(following.y, mouse_y, 0.2);
		break;
		
	case cammode.move_to_target:
		if (mouse_check_button(mb_left))
		{
			xTo = mouse_x;
			yTo = mouse_y;
		}
		break;
		
		
	default:
		break;
}
if (smoothPan)
{
	if (x + (xTo - x) / 15 > cwidth / 2) and (x + (xTo - x) / 15 < room_width - cwidth / 2) x += (xTo - x) / 5;
	if (y + (yTo - y) / 15 > cheight / 2) and (y + (yTo - y) / 15 < room_height - cheight / 2) y += (yTo - y) / 5;
}
else
{
	x = xTo;
	y = yTo;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);

x = clamp(x, 0 + cwidth / 2, room_width - cwidth / 2);
y = clamp(y, 0 + cheight / 2, room_height - cheight / 2);
