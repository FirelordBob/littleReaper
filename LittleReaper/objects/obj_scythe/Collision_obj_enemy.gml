/// @description Insert description here
// You can write your code in this editor
if(!other.invuln)
{
	other.hsp = cos(degtorad(image_angle-45))*swingSpeed*image_xscale + irandom_range(-3,3)
	other.vsp = sin(degtorad(image_angle-45))*swingSpeed + irandom_range(-3,3)
	other.invuln = 1
	other.invulnTimer = other.timerMax
}
