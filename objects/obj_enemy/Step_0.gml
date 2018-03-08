/// @description basic enemy AI all should follow


move = 0

//Enemy should change status depending on whats happening
	//If player is spotted, change status to follow, unless player is gorilla, then hide
	if(distance_to_object(obj_monk)<=60){
		
		if(obj_monk.currentControl.object_index == obj_gorilla){
			enemy_state = status.hide;
		}
		else{enemy_state = status.follow;}
		
		
	}
	

	//If nothing, return to control point
	else{
		enemy_state = status.patrol;
	}
	
	//Get where the monk is 
	monkDir = arctan2((obj_monk.y-y),(obj_monk.x-x))* 180 / pi + 180;
	show_debug_message(monkDir);
	if (0<monkDir && monkDir<90)move = -1;
	if (90<monkDir && monkDir<180)move = 1;
	if (180<monkDir && monkDir<270)move = 1;
	if (270<monkDir && monkDir<360)move = -1;
	

//Enemies should patrol a set path until player comes
if(enemy_state == status.patrol){
	
	originDir = arctan2((origin_y-y),(origin_x-x))* 180 / pi + 180;
	show_debug_message(originDir);
	if (0<originDir && originDir<90)move = -1;
	if (90<originDir && originDir<180)move = 1;
	if (180<originDir && originDir<270)move = 1;
	if (270<originDir && originDir<360)move = -1;
	hsp = move * walkSpeed;
}

//Enemies should follow player if they are spotted

if(enemy_state == status.follow){
	//monkDir = point_direction(x,y,obj_monk.x,obj_monk.y);
	
	
	
	
	hsp = move * walkSpeed;
	
}
//Enemies should run away if a player controlled gorilla is near

if(enemy_state ==status.hide){
	
	hsp = (-1)*move * walkSpeed;
	
}

//Enemies should be effected by gravity

vsp = vsp + grav;
//horizonal
if(place_meeting(x+hsp,y,obj_block)){
	//
	vsp = jumpHeight + grav + vsp;
	while(!place_meeting(x+sign(hsp),y,obj_block)){
		x = x+sign(hsp);
	}
	hsp = 0;
	
}
x = x + hsp;



//vertical
if(place_meeting(x,y+vsp,obj_block)){
	while(!place_meeting(x,y+sign(vsp),obj_block)){
		y = y +sign(vsp);
	}
	vsp = 0;
	
}
y = y + vsp;

