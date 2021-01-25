/// @description Insert description here
// You can write your code in this editor
player = noone

for(var i = 0; i < 10; i++)
{
	distance = irandom_range(room_height*3/4,room_height)
	var new_scale = distance/room_height
	with(instance_create_depth(irandom_range(1.5*view_wport[0], room_width-1.5*view_wport[0]),distance,99 - new_scale*20,obj_bg)	)
	{
		image_xscale = new_scale
		image_yscale = new_scale
		image_blend = make_color_hsv(0,0, 255*(new_scale - .2))
		
	}
	
}