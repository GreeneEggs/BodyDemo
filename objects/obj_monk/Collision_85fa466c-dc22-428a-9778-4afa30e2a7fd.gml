/// @description Insert description here
// You can write your code in this editor
if(inControl){
if(drownTime == 60){
health -=1;
drownTime = 0;
}
if(health<=0){
	instance_destroy();	
}
drownTime+=1;
}