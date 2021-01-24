/// @description Insert description here
// You can write your code in this editor

if(!invuln && !hit)
{
	hsp = 0
	if(image_xscale = 1)
	{
		instance_create_depth(bbox_left - 40, y-sprite_height,depth-2,obj_projectile)
	}
	else 
	{
		instance_create_depth(bbox_right- 40, y-sprite_height,depth-2,obj_projectile)
	}
	alarm[0] = fireAlarm
	stand = 1
	alarm[1] = moveTimer
}
else
{
	alarm[0] = 1	
}
