/// @description basic enemy AI all should follow


//Enemies should be effected by gravity


//Enemy should change status depending on whats happening
	//If player is spotted, change status to follow, unless player is gorilla, then hide
	if(distance_to_object(obj_monk)<=60){
		
		if(obj_monk.currentControl == obj_gorilla){
			enemy_state = status.hide
		}
		else{enemy_state = status.follow;}
		
		
	}
	

	//If nothing, have status as hunt
	else{
		enemy_state = status.hunt
	}


//Enemies should patrol a set path until player comes
if(enemy_state == status.hunt){
	
	speed = 0;
	
}

//Enemies should follow player if they are spotted

if(enemy_state == status.follow){
	direction =point_direction(x,y,obj_monk.x,obj_monk.y);
		speed = 4;
}
//Enemies should run away if a player controlled gorilla is near

if(enemy_state ==status.hide){
	
	direction = point_direction(x,y,-obj_monk.x,obj_monk.y)
}


