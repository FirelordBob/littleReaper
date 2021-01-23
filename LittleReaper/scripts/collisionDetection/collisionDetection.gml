function collisionDetection(argument0) {
	var object = argument0
	var xx = x
	var yy = y

	if vsp > 0 && (position_meeting(bbox_left,y+vsp,object) || position_meeting(x,y+vsp,object) || position_meeting(bbox_right,y+vsp,object))
	{
		onGround = 1
	}
	else
		onGround = 0
	
	if vsp < 0 && (position_meeting(bbox_left,bbox_top+vsp,object) || position_meeting(x,bbox_top+vsp,object) || position_meeting(bbox_right,bbox_top+vsp,object))
	{
		hitUp = 1
	}
	else
		hitUp = 0
	
	if hsp < 0 && (position_meeting(bbox_left+hsp,y-1,object) || position_meeting(bbox_left+hsp,y-sprite_height/2,object) || position_meeting(bbox_left+hsp,bbox_top,object))
	{
		hitLeft = 1
	}
	else
		hitLeft = 0
	
	if hsp > 0 && (position_meeting(bbox_right+hsp+1,y-1,object) || position_meeting(bbox_right+hsp+1,y-sprite_height/2,object) || position_meeting(bbox_right+hsp+1,bbox_top,object))
	{
		hitRight = 1
	}
	else
		hitRight = 0
	
	x += hsp
	y += vsp
	var attempts = 0
	var maxAttempts = 1000
	var x1 = xx
	var y1 = yy
	if(place_meeting(x,y,object))
	{
		if(hitLeft || hitRight)
			x = xx
		if(onGround || hitUp)
			y = yy
		while(!place_meeting(x,y,object))
		{
			x1 = x
			y1 = y
			if(hitLeft || hitRight)
				x += hsp/100
			if(onGround || hitUp)
				y += vsp/100
			if(attempts > maxAttempts)
			{
				x = xx
				y = yy
				break
			}
			attempts++
		}
	
		if(hitLeft || hitRight)
		{
			x = x1
			hsp = 0	
		}
		if(onGround || hitUp)
		{
			y = y1
			vsp = 0	
		}
	
	}


}
