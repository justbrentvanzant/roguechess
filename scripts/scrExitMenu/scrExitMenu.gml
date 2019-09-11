//move out of menu slide
dir = argument0;
targSlide = argument1;
moveConstant = 32; 
moveTimeCutoff = 18;
moveTimeConstant = 24; 
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0])
// 0--daily challenges 1-- 
//set moving states of camera manager.
objCameraManager.isMoving = true; 
objCameraManager.isHorMovement = true; 

//move camera right
if (dir == 0) {
	//total distance computation
	var totalDist = (width*targSlide);
	var targDist = objCameraManager.x+(width*targSlide);
	//camera prep
	objCameraManager.movStep = 0; 
	objCameraManager.xMovTarg = targDist;
	//speedy inc
    var incDist = (totalDist*0.9)/moveTimeCutoff;
	objCameraManager.moveArray[0] = 0; 
	for (var i = 0; i < moveTimeCutoff; i++) {

		objCameraManager.moveArray[i] = incDist;
	}
	//slow inc
	var newDist = (totalDist*0.1)/(moveTimeConstant-moveTimeCutoff);
	for (var i = moveTimeCutoff; i < moveTimeConstant; i++) {
		objCameraManager.moveArray[i] = newDist;
	}
}
//move camera left
else {
	//total distance computation
	var totalDist = (height*targSlide);
	var targDist = objCameraManager.x+(height*targSlide);
	//camera prep
	objCameraManager.movStep = 0; 
	objCameraManager.yMovTarg = targDist;
	//speedy inc
    var incDist = (totalDist*0.9)/moveTimeCutoff;
	objCameraManager.moveArray[0] = 0; 
	for (var i = 0; i < moveTimeCutoff; i++) {
		objCameraManager.moveArray[i] = incDist;
	}
	//slow inc
	incDist = (totalDist*0.1)/(moveTimeConstant-moveTimeCutoff);
	for (var i = moveTimeCutoff; i < moveTimeConstant; i++) {
		objCameraManager.moveArray[i] = incDist;
	}
}
