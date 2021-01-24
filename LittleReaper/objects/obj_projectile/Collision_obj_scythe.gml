/// @description Insert description here
// You can write your code in this editor
if(!invuln && other.swing)
{
	direction = point_direction(other.player.x,other.player.y - other.player.sprite_height/2,x,y) - 45*other.player.image_index + irandom_range(-20,20)
	speed += 2*other.swingSpeed/other.swingMax
	alarm[0] = invulnTimer
	invuln = 1
	reflected = 1
}