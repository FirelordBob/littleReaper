/// @description Insert description here
// You can write your code in this editor
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);
randomize()

audio_play_sound(asset_get_index("song" +string(irandom_range(1,2))),0,0)
room_goto_next()
