/// @description Insert description here
// You can write your code in this editor
if(!hit && !other.invuln)
{
hit = 1
alarm[0] = hitTime
other.invuln = 1
other.alarm[0] = other.invulnTimer
other.sprite_index = spr_popExplode
other.speed = 0	

audio_play_sound(snd_hit,0,0)
}
