//Movement Keys
var right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Movement Calculations
xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//Collision from right to left
if(place_meeting(x + xspeed, y, oWall))
{
	xspeed = 0;
}

//Collision from down to up
if(place_meeting(x, y + yspeed, oWall))
{
	yspeed = 0;
}

if(keyboard_check(vk_shift)) {
	move_speed = run_speed;
} else {
	move_speed = walk_speed;
}


if(can_move) {
	//Animation
	if(xspeed > 0 || right_key) {
		sprite_index = sPlayerRight;
	} else if(xspeed < 0 || left_key) {
		sprite_index = sPlayerLeft;
	} else if(yspeed > 0 || down_key) {
		sprite_index = sPlayerDown;
	} else if(yspeed < 0 || up_key) {
		sprite_index = sPlayerUp;
	}

	if((xspeed != 0) || (yspeed != 0)) {
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = 0;
	}

	//Move Player
	x += xspeed;
	y += yspeed;
}
