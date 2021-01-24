/// @description Insert description here
// You can write your code in this editor

//NOTE: The active indices of the spr_powermeter are 1-10
var segmentSize = rotateMax/10 //Change the magic number 10 to the # of active indices in spr-powermeter
                           //I couldn't figure out how to get the # of active indices in a sprite ;)

index_to_draw = 0

if(swing && !returnScythe) {
	var index_to_draw = ceil(swingSpeed/segmentSize)
}
else if rotate > 1 {
	var index_to_draw = ceil(rotate/segmentSize)
}

draw_sprite(spr_powermeter,index_to_draw,10,300)
