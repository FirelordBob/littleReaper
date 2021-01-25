/// @description Insert description here
// You can write your code in this editor
if(!hit && !other.invuln && other.hp>0)
{
hit = 1
alarm[0] = hitTime
other.invuln = 1
other.invulnTimer = other.timerMax
audio_play_sound(snd_hit,0,0)
}
other.hsp = irandom_range(other.hMax*image_xscale,other.hMax*3*image_xscale)
other.vsp = irandom_range(-other.vMax,other.vMax)