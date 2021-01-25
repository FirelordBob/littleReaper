/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

draw_set_font(font)
draw_roundrect(dialogueX,dialogueY,dialogueX+ dialogueWidth,dialogueY+dialogueHeight,1)

draw_text_ext(dialogueX +dialogueWidth/2, dialogueY + dialogueHeight/2, lines[line], 50, dialogueWidth - 40)

draw_set_font(Font3)

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
if(alarm[0] = -1)
{
draw_text(dialogueX+10,dialogueY + dialogueHeight-10,"Press E To Continue")
draw_text(20,display_get_gui_height() - 30,"Try Refreshing if inputs don't work!")
}