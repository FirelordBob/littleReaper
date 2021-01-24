/// @description Insert description here
// You can write your code in this editor

//NOTE: The active indices of the spr_powermeter are 1-10
var segmentSize = rotateMax/10 //Change the magic number 10 to the # of active indices in spr-powermeter
                           //I couldn't figure out how to get the # of active indices in a sprite ;)

index_to_draw = 0

if(swing && !returnScythe) {
	var index_to_draw = ceil((swingSpeed-10)/(swingMax/10))
}
else if rotate > 1 {
	var index_to_draw = ceil(rotate/segmentSize)
}


var pX =  x
var pY =  player.y - player.sprite_height

if(maxRotation && floor(maxCount/4) mod 2 = 0)
{
	index_to_draw = 1
}


draw_sprite_ext(spr_powermeter,index_to_draw,pX+irandom_range(-maxRotation,maxRotation),pY+irandom_range(-maxRotation,maxRotation),1,1,90,c_white,1)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+irandom_range(-maxRotation,maxRotation),image_blend,image_alpha)
