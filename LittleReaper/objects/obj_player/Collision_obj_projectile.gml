/// @description Insert description here
// You can write your code in this editor
if(!hit && !other.invuln)
{
hit = 1
alarm[0] = hitTime
other.invuln = 1
other.invulnTimer = other.timerMax
other.sprite_index = spr_popExplode
other.speed = 0	


}
