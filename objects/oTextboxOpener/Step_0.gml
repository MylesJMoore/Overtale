if (place_meeting(x,y,oPlayer) && oPlayer.can_move && (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")))) {
	var instantiated = instance_create_depth(0, 0, -9998, oTextbox);
	instantiated.text = text;
	instantiated.speaker_sprite = speaker_sprite;
	instantiated.textbox_sound = textbox_sound;
}