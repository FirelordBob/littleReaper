/// @description Insert description here
// You can write your code in this editor
if(!swing)
	{
	rotation*=rotateIncrease
	image_angle+=image_xscale*rotation
	rotate+=rotation
	if(rotate>=rotateMax)
	{
		swing = 1
		swingSpeed = (rotate/rotateMax)*swingMax
		rotation = 1
	}
}	
