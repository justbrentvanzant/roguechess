//generateBoard(size)
//coordinate variable setup 
size = argument0;
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

usableWidth = ceil(width*.96)
squareSize = ceil(usableWidth/8);

centerX = x + (width/2); 
centerY = y + (height*.55); 

curBoardWidth = (squareSize*size);
sideWidth = curBoardWidth/2;

xStart = centerX - sideWidth;
yStart = centerY - sideWidth;

for (var i = 0; i < size; i++){
	for ( var z = 0; z < size; z++) {
		xLoc = xStart + (i * squareSize); 
		yLoc = yStart + (z * squareSize); 
		newCell = instance_create_depth(xLoc,yLoc,-10,objCell);
		newCell.size = squareSize; 
		if ( i % 2 == 0) {
			if ( z % 2 == 0) {
				newCell.color = 0; // white
			}
			else {
				newCell.color = 1;
			}
		}
		else {
			if ( z % 2 == 0) {
				newCell.color = 1; // white
			}
			else {
				newCell.color = 0;
			}
		
		}
		myCells[yLoc,xLoc] = newCell;
	}	
}
bgSize = curBoardWidth+ceil(width/25);;


