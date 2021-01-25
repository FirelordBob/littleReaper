/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(song1) && !audio_is_playing(song2))
	audio_play_sound(asset_get_index("song" +string(irandom_range(1,2))),0,0)
