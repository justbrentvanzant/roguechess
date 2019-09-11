/// @description Setup
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

baseSize = ceil(width*.065)
type = 3;
iconConst = 128;
sizeMult = (1/(iconConst/baseSize)*1.4);


isActive = false;
activationTime = 1; 
myColor = objColorManager.th1pl;
alarm[0] = activationTime;