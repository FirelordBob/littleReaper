/// @description Insert description here
// You can write your code in this editor
if(!hit && !other.invuln)
{
hit = 1
alarm[0] = hitTime
}
other.hsp = irandom_range(-other.hMax,other.hMax)
other.vsp = irandom_range(-other.vMax,other.vMax)