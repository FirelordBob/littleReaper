/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//Friction and gravity
var playerX = 0
with(obj_player)
	playerX = x
	
if(x > playerX && !hit && !invuln && abs(x  - playerX) > 40 && onGround && !stand)
	hsp -= walkSpeed
	
else if(!hit  && !invuln  && abs(x  - playerX) > 40 && onGround && !stand)
	hsp += walkSpeed

if(hsp < 0 && !stand)
	image_xscale = 1
else if(!stand)
	image_xscale = -1

if(hsp = 0 && playerX < x)
	image_xscale = 1
else if(hsp = 0)
	image_xscale = -1

if(onGround)
{
	jumping = 0
	//hsp*=fric
	
}
else
	vsp += grav

//Limit Speed
if(hsp > hMax)
	hsp = hMax + hMax*invuln
if(hsp < -hMax)
	hsp = -hMax - hMax*invuln
	
	
if(vsp > vMax)
	vsp = vMax
if(vsp < -vMax)
	vsp = -vMax

//Check Collision
collisionDetection(obj_floor)


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