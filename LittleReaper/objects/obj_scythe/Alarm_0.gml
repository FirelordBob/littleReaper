/// @description Insert description here
// You can write your code in this editor
if(swingSpeed > 10)
{
alarm_set(0,swingMax-swingSpeed+40)
audio_play_sound(snd_whoosh,0,0)
}