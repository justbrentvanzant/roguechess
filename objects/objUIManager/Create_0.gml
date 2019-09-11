/// @description Setup
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

slot1CenterX = ceil(width*.34)
slot2CenterX = ceil(width*.50)
slot3CenterX = ceil(width*.66)

slotRadius = ceil(width*.08)
heightBottomControls = height-ceil(height*.09); 

instance_create_depth(slot1CenterX,heightBottomControls,-6, objCard);
instance_create_depth(slot2CenterX,heightBottomControls,-6, objCard);
instance_create_depth(slot3CenterX,heightBottomControls,-6, objCard);

depth = -5;


