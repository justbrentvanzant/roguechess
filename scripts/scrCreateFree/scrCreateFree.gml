height = camera_get_view_height(view_camera[0]);


//creation of slide.
var newSlide = instance_create_depth(0, obSlideManager.y + (((obSlideManager.freeCount)+1)*height),-1, objSlide);

//slide manager handling
obSlideManager.freeArray[obSlideManager.freeCount] = newSlide;
obSlideManager.freeCount += 1;
obSlideManager.currentSlide = newSlide;