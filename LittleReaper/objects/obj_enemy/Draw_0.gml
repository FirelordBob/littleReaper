/// @description Insert description here
// You can write your code in this editor
if(invuln && floor((invulnTimer - 1)/3) mod 2 = 1 )
{
shader_set(shd_white_sprite);
	draw_self();
shader_reset();
}
else
{
	draw_self();	
}
if(hp > 0)
	draw_sprite_ext(spr_heart,hp,x,y,image_xscale,1,0,c_white,1)
else
	draw_sprite_ext(spr_heart,hp,x,y-sprite_height,image_xscale,1,0,c_white,1)
