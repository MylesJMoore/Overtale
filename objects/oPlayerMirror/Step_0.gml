//Movement Keys
var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

//Movement Calculations
xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;

//Collision from right to left
if(place_meeting(x + xspeed, y, oPhysicalObject))
{
	xspeed = 0;
}

//Collision from down to up
if(place_meeting(x, y + yspeed, oPhysicalObject))
{
	yspeed = 0;
}

//Animation
if(xspeed > 0) {
	sprite_index = sPlayerRight;
} else if(xspeed < 0) {
	sprite_index = sPlayerLeft;
} else if(yspeed > 0) {
	sprite_index = sPlayerDown;
} else if(yspeed < 0) {
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