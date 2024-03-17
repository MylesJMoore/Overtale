//Toggle Fullscreen
if (keyboard_check_pressed(vk_f4) or keyboard_check_pressed(ord("F"))) {
    window_set_fullscreen(!window_get_fullscreen());
}

/*
if (keyboard_check_pressed(ord("B"))) {
	room_goto(rBattleRoom);
	oPlayer.visible = false;
	oPlayer.x = 0;
	oPlayer.y = 0;
	oPlayer.can_move = false;
}
*/