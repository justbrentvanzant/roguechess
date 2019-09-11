width = camera_get_view_width(view_camera[0]);
show_debug_message("TargX: "+string(obSlideManager.menuSlide.x + (((obSlideManager.dailyCount)+1)*width)))
var newSlide = instance_create_depth(obSlideManager.menuSlide.x + (((obSlideManager.dailyCount)+1)*width),0,-1, objSlide);
obSlideManager.dailyArray[obSlideManager.dailyCount] = newSlide;
show_debug_message("Before: "+string(obSlideManager.dailyCount))
obSlideManager.dailyCount += 1;
show_debug_message("After: "+string(obSlideManager.dailyCount))