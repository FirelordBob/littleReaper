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