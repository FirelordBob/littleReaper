/// @description Insert description here
// You can write your code in this editor
if(reflected && sprite_index = spr_pop)
{
sprite_index = spr_popExplode
speed = 0

	
	//other.hsp = cos(degtorad(image_angle-75))*swingSpeed*image_xscale + irandom_range(3,13)*image_xscale
	//other.vsp = sin(degtorad(image_angle-75))*swingSpeed + irandom_range(-3,-13)
	other.invuln = 1
	other.invulnTimer = other.timerMax
	
	other.hit = 1
	other.hitTimer = other.hitMax
	other.bounce = 1
	other.hp -= 3
	if(other.hp <= 0)
		instance_destroy(other)


}