/// @description Insert description here
// You can write your code in this editor
with(obj_bg)
{
	if(id != other.id && point_distance(x,y,other.x,other.y) < 200)
		instance_destroy()

}
