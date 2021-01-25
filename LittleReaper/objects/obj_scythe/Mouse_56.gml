/// @description Insert description here
// You can write your code in this editor
	if(rotate > 0 && swing = 0)
	{
		swing = 1
		swingSpeed = (rotate/rotateMax)*swingMax
		rotation = rotationBase
		maxRotation = 0
		maxCount = 0
		audio_play_sound(snd_whoosh,0,0)
		alarm_set(0,swingMax-swingSpeed+40)
	}