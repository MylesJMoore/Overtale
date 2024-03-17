//Textbox Size
textbox_width = 303;
textbox_height = 80;
textbox_height_offset = 152;
textbox_width_offset = 8;
border = 8;
line_separation = 15;
line_width = textbox_width - (border * 2);

//Textbox Sprite/Portraits/Sound
textbox_with_char_portrait_offset = 78;
textbox_non_char_portrait_offset = 17;
textbox_sprite = sTextbox;
textbox_image = 0;
textbox_image_speed = 0;
textbox_sound = sndDefaultText;
portrait_sprite_height = 70;
portrait_sprite_width = 70

//Text
page = 0;
page_number = 0;
text[0] = "text";

//Text Animation
text_length[0] = string_length(text[0]);
draw_character = 0;
text_speed = 1;
word_string = "";

//Sets up Text to be written
setup = false;

//Dialogue Sprite
speaker_sprite[0] = noone;
