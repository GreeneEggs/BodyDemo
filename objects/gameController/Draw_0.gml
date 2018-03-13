/// @description draws health and alarm timer

//Draw the monks health and everything

if(end_time = false){
with(obj_monk)
{	
	for(i = 0;i<health;i++)
	{
		draw_sprite(spr_heart,0,i*30,20);
	}
	
	draw_set_color(c_white);
	draw_text(40,50,(alarm_get(0)/100));
	draw_text(40,70,(current_time/1000));
}	

}
else{
		draw_text(room_width/2,room_height/2,"LEVEL COMPLETE!");
		draw_text(40,70,(end_time/1000) );
		instance_create_layer(room_width/2,(room_height/2) +60,layer,obj_next_level_btn)
	}
	