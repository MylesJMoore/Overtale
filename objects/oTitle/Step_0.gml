if(image_index == 0 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")))) {
	image_index = 1;
	audio_play_sound(sndSelect, 11, false);
} else if(image_index == 1 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")))) {
	image_index = 2;
	audio_play_sound(sndSelect, 11, false);
} else if(image_index == 2 and (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")))) {
	image_index = 3;
	audio_play_sound(sndMenuMove, 11, false);
} else if(image_index == 3 and (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")))) {
	image_index = 2;
	audio_play_sound(sndMenuMove, 11, false);
} else if((image_index == 3 or image_index == 2) and (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")))) {
	image_index = 1;
	audio_play_sound(sndDeselect, 11, false);
} else if((image_index == 1) and (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("X")))) {
	image_index = 0;
} else if(image_index == 2 and (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")))) {
	audio_play_sound(sndSelect, 11, false);
	room_goto(startRoom);
	var instantiated = instance_create_layer(startX, startY, "Player", oPlayer);
}