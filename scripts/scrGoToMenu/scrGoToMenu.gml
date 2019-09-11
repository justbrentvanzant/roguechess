//move out of menu slide
dir = argument0;
currentSlideNum = argument1;

moveConstant = 32; 
moveTimeCutoff = 18;
moveTimeConstant = 24; 
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0])
// 0--coming from daily challenges 1 coming from free play-- 
//set moving states of camera manager.
objCameraManager.isMoving = true; 


//move camera right
if (dir == 0) {
	objCameraManager.isHorMovement = true; 
	//total distance computation
	var totalDist = (width*currentSlideNum);
	var targDist = objCameraManager.x-(width*currentSlideNum);
	//camera prep
	objCameraManager.movStep = 0; 
	objCameraManager.xMovTarg = targDist;
	objCameraManager.yMovTarg = 0;
	//speedy inc
    var incDist = (totalDist*0.9)/moveTimeCutoff;
	objCameraManager.moveArray[0] = 0; 
	for (var i = 0; i < moveTimeCutoff; i++) {

		objCameraManager.moveArray[i] = -incDist;
	}
	//slow inc
	var newDist = (totalDist*0.1)/(moveTimeConstant-moveTimeCutoff);
	for (var i = moveTimeCutoff; i < moveTimeConstant; i++) {
		objCameraManager.moveArray[i] = -newDist;
	}
}
//move camera down
else {
	objCameraManager.isHorMovement = false; 
	//total distance computation
	var totalDist = (height*currentSlideNum);
	var targDist = objCameraManager.y-(height*currentSlideNum);
	//camera prep
	objCameraManager.movStep = 0; 
	objCameraManager.yMovTarg = targDist;
	objCameraManager.xMovTarg = 0;
	//speedy inc
    var incDist = (totalDist*0.9)/moveTimeCutoff;
	objCameraManager.moveArray[0] = 0; 
	for (var i = 0; i < moveTimeCutoff; i++) {
		objCameraManager.moveArray[i] = -incDist;
	}
	//slow inc
	incDist = (totalDist*0.1)/(moveTimeConstant-moveTimeCutoff);
	for (var i = moveTimeCutoff; i < moveTimeConstant; i++) {
		objCameraManager.moveArray[i] = -incDist;
	}
}
show_debug_message("x: " + string(objCameraManager.x) + "y: " + string(objCameraManager.y))