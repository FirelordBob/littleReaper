//Key Input
var running = keyboard_check(keySprint)
var leftPress = keyboard_check(keyLeft)
var rightPress = keyboard_check(keyRight)
var jumpPress = keyboard_check(keyJump)

if(global.useController)
{
	var leftAxis = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
	leftPress = (sign(leftAxis) = -1 && abs(leftAxis) > .2)
	
	rightPress = (sign(leftAxis) = 1 && abs(leftAxis) > .2)

	running = (gamepad_is_connected(0) && (gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check_released(0, gp_shoulderrb)))

	jumpPress = (gamepad_is_connected(0) && (gamepad_button_check(0, gp_face1) || gamepad_button_check_released(0, gp_face1)))
}

//Horizontal Move
if(leftPress && !hit)
{
	hsp -= (walkSpeed + running*runSpeed)
	if(onGround  && sprite_index != spr_playerJump)	
	{
		sprite_index = spr_playerWalk
		sprite = "walk"
	}
	image_xscale = -1
	if(running)
		image_speed = 1.5
	else
		image_speed = 1
		
}
else if(rightPress  && !hit)
{
	hsp += (walkSpeed + running*runSpeed)
	if(onGround  && sprite_index != spr_playerJump)	
	{
		sprite_index = spr_playerWalk
		sprite = "walk"
	}
	image_xscale = 1
	if(running)
		image_speed = 1.5
	else
		image_speed = 1
			
}
else if(onGround && !hit && sprite_index != spr_playerJump)
{
	sprite_index = spr_playerIdle
	sprite = "idle"
}

//Jump
if(onGround && jumpPress && !hit && !jumping)
{
	
	jumping = 1
	jumped = 0
	sprite_index = spr_playerJump
	image_index = 0
	sprite = "jump"
}

if(sprite_index = spr_playerJump && floor(image_index) = 1 && !jumped)
{
	vsp -= jumpSpeed
	jumped = 1
}

//Friction and gravity
if(onGround)
{
	jumping = 0
	hsp*=fric
}
if(sprite_index != spr_playerJump )
	vsp += grav - jumpPress*float


//Limit Speed
if(hsp > hMax + running*runMax)
	hsp = hMax
if(hsp < -hMax - running*runMax)
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
