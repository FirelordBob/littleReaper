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
