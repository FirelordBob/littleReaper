/// @description Insert description here
// You can write your code in this editor
blockSize =150

for(var i=-12; i < room_width/blockSize + 12; i++ )
{
	instance_create_depth(i*blockSize,room_height-blockSize,50,obj_floor)	
	instance_create_depth(i*blockSize,0,50,obj_floor)	
	
}

