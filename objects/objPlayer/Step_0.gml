// Movement
hSpd = (keyboard_check(rKey) - keyboard_check(lKey)) * genSpd;
vSpd = (keyboard_check(dKey) - keyboard_check(uKey)) * genSpd;

x += hSpd;
y += vSpd;

// Firing
if (mouse_check_button(mb_left))
{
	var bullet = instance_create_layer(x, y, "Projectile", objBullet);
	with (bullet) direction = point_direction(x, y, mouse_x, mouse_y);
}
