//Playing Sound per letter
if(old_draw_character != draw_character) {
	//audio_play_sound(textbox_sound, 10, false);
}

//Playing Sound per word
if(old_draw_word != word_string) {
	audio_play_sound(textbox_sound, 10, false);
}