/// @description Insert description here
// You can write your code in this editor
var enemyCount = 0
with(obj_enemyParent)
{
	enemyCount++	
}
alarm[0] = spawnTimer - level
if(enemyCount < 10)
{
	
if(level < levelMax)
{
	level+=2
}




currentEnemy = irandom_range(0,level)
newEnemy = noone

var gameLevel = 0
with(obj_gui)
{	
	gameLevel = level
}

if(currentEnemy > 45 && gameLevel >=2)	
{
	newEnemy = obj_bigRat	
}
else
	newEnemy = obj_enemy
		

instance_create_depth(player.x + side*view_wport[0], room_height - 300, -2, newEnemy )
side = -side
}