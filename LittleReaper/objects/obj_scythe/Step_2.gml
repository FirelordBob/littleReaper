/// @description Insert description here
// You can write your code in this editor
if(player != noone)
{
	x = player.x
	y = player.y - player.sprite_height/3
	var lastXscale = image_xscale
	image_xscale = player.image_xscale
	if(image_xscale != lastXscale)
		image_angle*= -1
	
	if(image_angle < 0 )
		image_angle += 360
			
	if(image_angle > 360 )
		image_angle -= 360
			
	if(swing && !returnScythe)
	{
		image_angle -= swingSpeed*image_xscale
		swingSpeed*=swingFalloff
		
		
		if(swingSpeed <= returnSpeed)
		{
			returnScythe = 1
			swingSpeed = 0
			rotate = 0	
		}
	}
	else if(returnScythe)
	{
	
		image_angle -= returnSpeed*image_xscale
		if(image_xscale = 1 && image_angle <= baseAngle)
		{
			image_angle = baseAngle
			returnScythe = 0
			swing = 0
				
		}
		
		if(image_xscale = -1 && image_angle >= 360 -baseAngle)
		{
			image_angle = 360 -baseAngle
			returnScythe = 0
			swing = 0
			
				
		}
	}
}