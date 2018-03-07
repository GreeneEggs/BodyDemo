/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(keyboard_check(vk_alt)&&!inControl){
	with(currentControl)
	{
	inControl = false;
	}
	inControl = true;
	currentControl = 0;
	visible = 1;
	y = y -15;
	alarm_set(0,-1);
}