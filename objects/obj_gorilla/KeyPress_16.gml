/// @description Handles Gorrilla Breaking and lifting stuff


//Handles Breaking Block
//right side
if(inControl){


brick = position_meeting(x+((facing)*35),y,obj_break_block);
if(brick)
{
	with(brick)instance_destroy();
}
//left side


//Handles lifting liftable blocks

if(!lifting){

brick = instance_nearest(x+((facing)*5),y,obj_lift_block);
show_debug_message(brick);
if(brick)
{
	brick.liftedBy = self;
	lifting = brick;
	
}

}
else{

	lifting.liftedBy = 0;
	lifting.x = x+(facing*60);
	lifting = false;
}
}