/// @description draw the slide
draw_set_color(mySecondaryColor);
draw_roundrect_ext(x+WIDTH_OFFSET+SHADOW_OFFSET-SHADOW_OFFSET_X, y+HEIGHT_OFFSET+SHADOW_OFFSET, x+WIDTH_OFFSET+myWidth+SHADOW_OFFSET-SHADOW_OFFSET_X, y+HEIGHT_OFFSET+myHeight+SHADOW_OFFSET,CIRCLE_RADIUS,CIRCLE_RADIUS,0);
draw_set_color(myPrimaryColor);
draw_roundrect_ext(x+WIDTH_OFFSET, y+HEIGHT_OFFSET, x+WIDTH_OFFSET+myWidth, y+HEIGHT_OFFSET+myHeight,CIRCLE_RADIUS,CIRCLE_RADIUS,0);
