/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;
grav = 0.3;
walkSpeed = 1;
facing = 0;

origin_x = x;
origin_y = y;

enemy_state = status.patrol;
enum status{
	patrol,
	follow,
	hide
}