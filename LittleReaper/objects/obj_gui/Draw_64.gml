/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_text(display_get_gui_width()/2,30,floor(alarm[0]/room_speed))

draw_text(display_get_gui_width()*3/4,30,"Souls: " + string(souls))

draw_text(display_get_gui_width()/4,30,"Level: " + string(level))

