/// @description Insert description here
// You can write your code in this editor
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

audio_play_sound(song1,0,1)
room_goto_next()
randomize()