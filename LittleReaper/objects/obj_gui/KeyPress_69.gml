/// @description Insert description here
// You can write your code in this editor
if(roundStart)
{
	roundStart = 0
	room_goto_next()
}
if(roundOver && complete)
{
	roundOver = 0
	roundStart = 1
	souls = 0
	goal += 5
	level++
	complete = 0
}
else if(roundOver)
{
	roundOver = 0
	roundStart = 1
	complete = 0
}