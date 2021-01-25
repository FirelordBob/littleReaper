/// @description Insert description here
// You can write your code in this editor
if(instance_exists(player))
{
	x = player.x
	y = player.y
	
	if(player.hit)
	{
		x += irandom_range(-player.alarm[0]/2,player.alarm[0]/2)
		
	}


var viewW = view_wport[0]
if(player.x > room_width - viewW/2 && alarm[1] == -1)
{	
	
	with(obj_enemyParent)
	{
		if(abs(other.player.x - x) > viewW*2)
			instance_destroy()
	}
	with(obj_enemyParent)
	{
		x -= room_width - (viewW + 50)	
	}
	
	
	alarm[1] = 1
	with(obj_bg)
	{
		if(abs(other.player.x - x) > viewW*2)
			instance_destroy()
	}
	with(obj_bg)
	{
		x -= room_width - (viewW + 50)	
	}
	while(instance_number(obj_bg) < 5)
	{
		distance = irandom_range(room_height*3/4,room_height)
		var new_scale = distance/room_height
		with(instance_create_depth(irandom_range(1.5*view_wport[0], room_width-1.5*view_wport[0]),distance,99 - new_scale*20,obj_bg))
		{	
			image_xscale = new_scale
			image_yscale = new_scale
			image_blend = make_color_hsv(0,0, 255*(new_scale - .2))
		
		}
			
	}
	

}
if(player.x < viewW/2 && alarm[0] == -1)
{	
	
	with(obj_enemyParent)
	{
		if(abs(other.player.x - x) > viewW*2)
			instance_destroy()
	}
	with(obj_enemyParent)
	{		
		x += room_width - (viewW + 50)
	}
	
	
	with(obj_bg)
	{
		if(abs(other.player.x - x) > viewW*2)
			instance_destroy()
	}
	with(obj_bg)
	{		
		x += room_width - (viewW + 50)
	}
	alarm[0] = 1
	while(instance_number(obj_bg) < 5)
	{
		distance = irandom_range(room_height*3/4,room_height)
		var new_scale = distance/room_height
		with(instance_create_depth(irandom_range(1.5*view_wport[0], room_width-1.5*view_wport[0]),distance,99 - new_scale*20,obj_bg))
		{	
			image_xscale = new_scale
			image_yscale = new_scale
			image_blend = make_color_hsv(0,0, 255*(new_scale - .2))
		
		}
			
	}
}

}