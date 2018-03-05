/// @description draws health and alarm timer

//Draw the monks health and everything
with(obj_monk)
{	
	for(i = 0;i<health;i++)
	{
		draw_sprite(spr_heart,0,i*30,20);
	}
	
	draw_set_color(c_white);
	draw_text(40,50,alarm_get(0));
}	
	