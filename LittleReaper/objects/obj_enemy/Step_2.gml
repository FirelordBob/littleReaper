/// @description Insert description here
// You can write your code in this editor
//Friction and gravity
var playerX = 0
with(obj_player)
	playerX = x
	
if(x > playerX && !hit && !invuln && abs(x  - playerX) > 40 && onGround)
	hsp -= walkSpeed
	
else if(!hit  && !invuln  && abs(x  - playerX) > 40 && onGround)
	hsp += walkSpeed

if(hsp < 0)
	image_xscale = -1
else
	image_xscale = 1


if(onGround)
{
	jumping = 0
	//hsp*=fric
	
}
else
	vsp += grav

//Limit Speed
if(hsp > hMax*hp + hMax*invuln)
	hsp = hMax*hp + hMax*invuln
if(hsp < -hMax*hp - hMax*invuln)
	hsp = -hMax*hp - hMax*invuln
	
	
if(vsp > vMax)
	vsp = vMax
if(vsp < -vMax)
	vsp = -vMax

//Check Collision
if(hp > 0)
{
	collisionDetection(obj_floor)
	
}
else
{
	y += vsp
	x += hsp
}

if(invuln)
{
	invulnTimer--
	if(invulnTimer == 0)
		invuln = 0
}

if(hit)
{
	hitTimer--
	if(hitTimer == 0)
	{
		hit = 0
		bounce = 0	
	}
}

if(hp <= 0)
{
	invuln = 1
	onGround = 0

	if(alarm[0] = -1)
	{
	depth = 70
	alarm[0] = 300
	
	image_yscale = - 1
	y += sprite_height
	with(instance_create_depth(x,y,depth-1,obj_soul))
		follow = other.id
	}
	
	
}