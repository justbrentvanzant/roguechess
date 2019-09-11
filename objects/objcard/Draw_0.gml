/// @description draw if active
if (isActive) {
	draw_set_color(myColor);
	draw_set_alpha(1);
	draw_circle(x,y,baseSize,0);
	switch(type) {
		
		case(0):
		{
			show_debug_message("In Here");
			draw_sprite_ext(sprPawn,0,x,y,sizeMult,sizeMult,0,colorInline,1);
		}
		break;
		case(1):
		{
			draw_sprite_ext(sprKnight,0,x,y,sizeMult,sizeMult,0,colorInline,1);
		}
		break;
		case(2):
		{
			draw_sprite_ext(sprBishop,0,x,y,sizeMult,sizeMult,0,colorInline,1);
		}
		break;
		case(3):
		{
			draw_sprite_ext(sprRook,0,x,y,sizeMult,sizeMult,0,colorInline,1);
		}
		break;
		case(4):
		{
			draw_sprite_ext(sprQueen,0,x,y,sizeMult,sizeMult,0,colorInline,1);	
		}
		break;
		case(5):
		{	
			draw_sprite_ext(sprKing,0,x,y,sizeMult,sizeMult,0,colorInline,1);	
		}
		break;
	}
}