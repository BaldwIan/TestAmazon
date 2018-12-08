camera = camera_create();
cwidth = 560;
cheight = 315;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(cwidth, cheight, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

view_set_wport(0, cwidth);
view_set_hport(0, cheight);

follow = objPlayer;
xTo = x;
yTo = y;
