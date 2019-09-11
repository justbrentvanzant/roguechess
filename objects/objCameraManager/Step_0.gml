if (isMoving)
{
	if (movStep < 24 ) {
		if (isHorMovement)
		{
			
			x+=moveArray[movStep];
		}
		else {
			y+=moveArray[movStep];
		}
		movStep+=1; 
	}
	else {
		if (xMovTarg != 0) {
			x = xMovTarg;
		}
		if (yMovTarg != 0) {
			y = yMovTarg;
		}
	
		isMoving = false; 	
	}
	
}
camera_set_view_pos(view_camera[0], x, y)