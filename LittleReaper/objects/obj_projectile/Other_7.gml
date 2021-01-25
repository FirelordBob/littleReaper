/// @description Insert description here
// You can write your code in this editor
if(sprite_index = spr_popSpawn)
{
	sprite_index = spr_pop
	var px = 0
	var py = 0
	with(obj_player)
	{
		px = x
		py = y-sprite_height
	}
	move_towards_point(px,py,maxSpeed)
	if(place_meeting(x,y,obj_floor))
		instance_destroy()
}
	
if(sprite_index = spr_popExplode)
{
	instance_destroy()
	audio_play_sound(snd_projectileExplode,0,0)	
}
	