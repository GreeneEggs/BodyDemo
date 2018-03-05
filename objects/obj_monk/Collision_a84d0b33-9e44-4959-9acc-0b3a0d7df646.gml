/// @description Handles capture when in range
// You can write your code in this editor
if(keyboard_check(vk_space)and inControl)
{
	inControl = false;
	currentControl = other;
	visible = 0;
	with(other)
	{
		inControl = true;
	}
	
	alarm_set(0,500);
	
}