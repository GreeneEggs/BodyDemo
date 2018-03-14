/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if(keyboard_check(vk_alt)&&!inControl){
	with(currentControl)
	{
	alarm_set(2,300);
	inControl = false;
	}
	inControl = true;
	currentControl = 0;
	visible = 1;
	y = y -15;
	alarm_set(0,-1);
}

if(keyboard_check(vk_space)&&inControl)
{
	currentControl = (nth_object_nearest(x,y,obj_controllable,1));
	
	if(distance_to_object(currentControl)<1){
	inControl = false;
	visible = 0;
	with(currentControl)
	{
		alarm[2] = -1;
		inControl = true;
	}
	alarm_set(0,obj_monk.cap_time);
	}
	else{ currentControl = 0;}
}

if(health < 0){
	health = 0;
	dead = true;
}