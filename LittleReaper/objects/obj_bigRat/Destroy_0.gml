/// @description Insert description here
// You can write your code in this editor
if(hp <= 0 && souls != 0)
{
	with(obj_gui)
	{
		souls += other.souls	
	}
	souls = 0
}
event_inherited()
for(var i = 0; i < 20; i++)
{
	instance_create_depth(x+irandom_range(-sprite_width/2,sprite_width/2),y-irandom(sprite_height),depth-1,obj_soul)

}
