/// @description  Keeps track of the current time amoung other things

//Logic for when level is complete
if (global.gamePaused == false && keyboard_check_pressed(vk_pause))
{
    instance_deactivate_all(true);
	instance_activate_object(self);
    global.gamePaused = true;
   // sprite_index = playButtonSprite;
}
else if (global.gamePaused == true && keyboard_check_pressed(vk_pause))
{
    instance_activate_all();
    global.gamePaused = false;
   // sprite_index = pauseButtonSprite;
}