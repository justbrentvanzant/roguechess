/// @description Setup
//slider constants
WIDTH_OFFSET = 50; 
HEIGHT_OFFSET = 100; 
CIRCLE_RADIUS = 60; 
SHADOW_OFFSET = ceil(WIDTH_OFFSET/5); 
SHADOW_OFFSET_X = 2*ceil(SHADOW_OFFSET/5);


//slider drawing
myPrimaryColor = objColorManager.th1b3;
mySecondaryColor = objColorManager.th1b2;
depth = -1; 
myWidth = camera_get_view_width(view_camera[0])-(WIDTH_OFFSET*2); 
myHeight = camera_get_view_height(view_camera[0])-(HEIGHT_OFFSET*2);


//slider movement 
isEntering = false;
isExiting = false; 
targetX = 0; 
targetY = 0; 
yMoveSpeed = 0; 
xMoveSpeed = 0; 