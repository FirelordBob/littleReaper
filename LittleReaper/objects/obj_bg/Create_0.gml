/// @description Insert description here
// You can write your code in this editor

sprite_index =asset_get_index("spr_bg"+string(irandom(1)))

with(obj_bg)
{
	if(id != other.id && point_distance(x,y,other.x,other.y) < 200)
		instance_destroy()

}
