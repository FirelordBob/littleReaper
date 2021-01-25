/// @description Insert description here
// You can write your code in this editor
if(!hit && !other.invuln && other.hp>0)
{
hit = 1
alarm[0] = hitTime/2
other.invuln = 1
other.invulnTimer = other.timerMax*2
}
