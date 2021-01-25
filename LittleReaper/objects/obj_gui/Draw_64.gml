/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font1)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_black)

draw_rectangle(0,0,display_get_gui_width(),30,0)
draw_set_color(c_white)

if(!roundOver && !roundStart)
{
draw_text(display_get_gui_width()/2,15,floor(alarm[0]/room_speed))

draw_text(display_get_gui_width()*3/4,15,"Souls: " + string(souls))

draw_text(display_get_gui_width()/4,15,"Level: " + string(level))

}
else if(roundStart && !roundOver)
{
	alarm[0] = timer
	draw_set_font(Font1)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/4,"Level " + string(level) )
	draw_set_font(Font1)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Collect " + string(goal) + " Souls!")
	draw_set_font(Font3)
	draw_text(display_get_gui_width()/2,display_get_gui_height()*3/4,"Press Space to Start!")
}
else if(roundOver && !roundStart)
{
	draw_set_font(Font1)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/4,"Level " + string(level) )
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Collected " + string(souls) + " Souls!")
	
	if(souls >= goal)
	{
		draw_text(display_get_gui_width()/2,display_get_gui_height()/2+ 100,"Complete!")
		draw_set_font(Font3)
		draw_text(display_get_gui_width()/2,display_get_gui_height()*3/4,"Press Space for Next Level!")
		complete = 1
	}
	else
	{
		draw_text(display_get_gui_width()/2,display_get_gui_height()/2+ 100,"Try Again!")
		draw_set_font(Font3)
		draw_text(display_get_gui_width()/2,display_get_gui_height()*3/4,"Press Space to Restart Level")
		complete = 0
	}
}
