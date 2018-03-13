/// @description Handles capture when in range
// You can write your code in this editor
if(keyboard_check(vk_space))
{
	inControl = false;
	currentControl = other;
	with(other)
	{
		inControl = true;
	}
	alarm_set(0,obj_monk.cap_time);
	
}