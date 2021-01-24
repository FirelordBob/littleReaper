/// @description Insert description here
// You can write your code in this editor
//Friction and gravity
if(onGround)
{
	jumping = 0
	hsp*=fric
}


	

vsp += grav

//Limit Speed
if(hsp > hMax)
	hsp = hMax
if(hsp < -hMax)
	hsp = -hMax
	
	
if(vsp > vMax)
	vsp = vMax
if(vsp < -vMax)
	vsp = -vMax

//Check Collision
collisionDetection(obj_floor)

while(bbox_left < 0)
{
	x++
	if(hsp < 0)	
		hsp = 0
}
	
while(bbox_right > room_width)
{
	x--
	if(hsp > 0)	
		hsp = 0	
}

if(invuln)
{
	invulnTimer--
	if(invulnTimer == 0)
		invuln = 0
}