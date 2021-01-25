/// @description Insert description here
// You can write your code in this editor
if(!other.invuln && swing && other.hp>0)
{
	other.hsp = ((other.x - player.x)/(sprite_height/2))*other.hMax*((swingSpeed+5)*2/swingMax) 
	other.vsp = -(((other.y - other.sprite_height/2) - (player.y - player.sprite_height/2))/(sprite_height/2))*other.vMax*((swingSpeed+5)/swingMax)
	
	
	//other.hsp = cos(degtorad(image_angle-75))*swingSpeed*image_xscale + irandom_range(3,13)*image_xscale
	//other.vsp = sin(degtorad(image_angle-75))*swingSpeed + irandom_range(-3,-13)
	other.invuln = 1
	other.invulnTimer = other.timerMax
	
	other.hit = 1
	other.hitTimer = other.hitMax
	other.bounce = 1
	other.hp -= 1
	audio_play_sound(snd_hitEnemy,0,0)
}
