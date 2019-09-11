/// @description Setup the Camera
width = 720;
height = 1280;
view_camera[0] =  camera_create_view(0, 0, width, height, 0, self, -1, -1, width, height);
x = camera_get_view_width(view_camera[0])/2;
y = camera_get_view_height(view_camera[0])/2;
depth = -5;
//movement setup
movStep = 0; 
moveArray[0] = 0;
xMovTarg = 0;
yMovTarg = 0;
isMoving = false;