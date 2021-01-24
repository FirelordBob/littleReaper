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
if(player.x > room_width - viewW/2)
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
	player.x = viewW/2 +50
}
if(player.x < viewW/2)
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
	player.x = room_width - viewW/2 -50
}

}