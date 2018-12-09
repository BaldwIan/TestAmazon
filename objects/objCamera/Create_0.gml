enum cammode
{
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peak,
	move_to_target,
	move_to_follow_object,
}

mode = 0;

camera = camera_create();
cwidth = 800;
cheight = 450;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(cwidth, cheight, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

view_set_wport(0, cwidth);
view_set_hport(0, cheight);

following = objPlayer;
xTo = x;
yTo = y;

mouseXPrev = -1;
mouseYPrev = -1;
