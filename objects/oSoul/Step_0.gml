//Movement Keys
var right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Movement Calculations
var xspeed = (right_key - left_key) * global.soul_speed;
var yspeed = (down_key - up_key) * global.soul_speed;
x += xspeed;
y += yspeed;

if (global.player_inv_frames > 0) {
	global.player_inv_frames -= 1;
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}