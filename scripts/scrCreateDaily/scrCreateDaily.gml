width = camera_get_view_width(view_camera[0]);


//creation of slide.
var newSlide = instance_create_depth(obSlideManager.menuSlide.x + (((obSlideManager.dailyCount)+1)*width),0,-1, objSlide);

//slide manager handling
obSlideManager.dailyArray[obSlideManager.dailyCount] = newSlide;
obSlideManager.dailyCount += 1;
obSlideManager.currentSlide = newSlide;