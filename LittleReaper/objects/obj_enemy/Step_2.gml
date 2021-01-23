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


if(place_meeting(x,y,obj_enemy) && instance_place(x,y,obj_enemy) != id)
{
	
	with(instance_place(x,y,obj_enemy))
	{
		vsp = (vsp + other.vsp)/2 + irandom_range(-2,2)
		hsp = (hsp + other.hsp)/2 + irandom_range(-2,2)
		other.vsp = (vsp + other.vsp)/2 + irandom_range(-2,2)
		other.hsp = (hsp + other.hsp)/2 + irandom_range(-2,2)
		collisionDetection(obj_enemy)
		
	}
	
	collisionDetection(obj_enemy)
	
}
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