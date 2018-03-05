/// @description Handles Gorrilla Breaking and lifting stuff
// You can write your code in this editor


//Handles Breaking Block
//left side
var brick = instance_position(x+5,y,obj_break_block);

if(brick)
{
	with(brick)instance_destroy();
}
//right side
brick = instance_position(x-5,y,obj_break_block);
if(brick)
{
	with(brick)instance_destroy()
}

//Handles lifting liftable blocks