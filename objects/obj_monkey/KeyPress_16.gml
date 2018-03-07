/// @description Handles the monkey jump
//

//if in control
if(inControl){
	
	//if feet on ground
	if(instance_position(x,y+16,obj_block)){
	
		y = y-jumpHeight;
	}
}