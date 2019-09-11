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
		x = xMovTarg;
		y = yMovTarg;
		isMoving = false; 	
	}
	
}
camera_set_view_pos(view_camera[0], x, y)