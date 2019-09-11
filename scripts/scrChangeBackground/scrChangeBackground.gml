var colorToSet = argument0;

var background = layer_background_get_id(layer_get_id("BG"));
layer_background_blend(background, colorToSet)