/// @description Handles Gorrilla Breaking and lifting stuff


//Handles Breaking Block
//right side
if(inControl){
var brick = instance_position(x+5,y,obj_break_block);
show_debug_message(brick);
brick = instance_position(x+35,y,obj_break_block);
if(brick)
{
	with(brick)instance_destroy();
}
//left side
brick = instance_position(x-35,y,obj_break_block);
show_debug_message(brick);
if(brick)
{
	with(brick)instance_destroy()
}

//Handles lifting liftable blocks

if(!lifting){
		brick = instance_position(x+35,y,obj_lift_block);
if(brick)
{
	
	brick.liftedBy = self;
	lifting = true;
}
//left side
brick = instance_position(x-35,y,obj_lift_block);
show_debug_message(brick);
if(brick)
{
	brick.liftedBy = self;
	lifting = true;
}
}
}