confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);

var textbox_x = camera_get_view_x(view_camera[0]) + textbox_width_offset;
var textbox_y = camera_get_view_y(view_camera[0]) + textbox_height_offset;

if(setup == false) {
	setup = true;
	oPlayer.can_move = false;
	
	draw_set_font(fText);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//Loop through pages
	page_number = array_length(text);
	for (var p = 0; p < page_number; p++;) {
		//Find how many characters are on each page and store that number in the text length array
		text_length[p] = string_length(text[p]);
		
		//There is a Character Portrait (offset textbox)
		text_x_offset[p] = textbox_with_char_portrait_offset;
		portrait_x_offset[p] = 42;
		line_width = textbox_width - (border*2) - text_x_offset[p];
		
		//No Character Portait (center textbox)
		if(speaker_sprite[0] == noone) {
			text_x_offset[p] = textbox_non_char_portrait_offset;
			line_width = textbox_width - (border*2);
		}
	}
}

//Typing Text
if (draw_character < text_length[page]) {
	draw_character += text_speed;
	draw_character = clamp(draw_character, 0, text_length[page]);
}

//Flip through pages
if (confirm_key) {
	//If typing is done for this page
	if (draw_character == text_length[page]) {
		//Next Page
		if (page < page_number - 1) {
			page++;
			draw_character = 0;
		} else {
			//Destroy the Textbox
			oPlayer.can_move = true;
			instance_destroy();
		}
	} 
} else if (skip_key && (draw_character != text_length[page])) {
	//Fill the page, skips text writing
	draw_character = text_length[page];
}

//Draw the textbox
textbox_image += textbox_image_speed;
var textbox_sprite_width = sprite_get_width(textbox_sprite);
var textbox_sprite_height = sprite_get_height(textbox_sprite);
draw_sprite_ext(textbox_sprite, textbox_image, textbox_x, textbox_y, 
textbox_width/textbox_sprite_width, textbox_height/textbox_sprite_height, 0, c_white, 1);

//Draw the Portrait
if (speaker_sprite[0] != noone) {
	sprite_index = speaker_sprite[page];
	if (draw_character == text_length[page]) {
		image_index = 0;
	}
	var _speaker_x = textbox_x + portrait_x_offset[page];
	
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y + (textbox_height/2), 
portrait_sprite_width/sprite_width, portrait_sprite_height/sprite_height, 0, c_white, 1);
}

//Draw the text in an entire line (you can use line_width_extra to add a buffer for long lines)
//var _drawtext = string_copy(text[page], 1, draw_character);
//draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_separation, line_width);

// Draws the text word by word (you can set color with @y or any relevant color)
var _drawtext = string_copy(text[page], 1, draw_character);
var words = StringSplit(_drawtext); // Split the text into words
var currentX = textbox_x + text_x_offset[page] + border;
var currentY = textbox_y + border;

var currentLine = ""; // To store the current line of text

for (var i = 0; i < ds_list_size(words); i++) {
    var word = ds_list_find_value(words, i + 1);

    // Check if the word is a string and not empty
    if (is_string(word) && string_length(word) > 0) {
        // Check for line breaks
        var lineBreakPos = string_pos("\n", word);
        if (lineBreakPos > 0) {
            // If there's a line break, adjust Y and reset X
            currentY += line_separation;
            currentX = textbox_x + text_x_offset[page] + border;
            currentLine = ""; // Reset current line
            // Only keep the portion of the word after the line break
            word = string_copy(word, lineBreakPos + 1, string_length(word) - lineBreakPos);
        }

        // Check for color codes
        if (string_char_at(word, 1) == "@") {
			var leftBracket = string_pos("@", word); // Find the position of the first "@" and move one position forward
			
			//Extract the color code from the word
			var extractedText = string_copy(word, leftBracket + 1, 6); //entire word
			var extractedText = string_copy(word, leftBracket + 1, 1); //1 letter code
				
			//Set the text color based on the color letter code
			SetTextboxWordColor(extractedText);

	        // Remove color code from the word
			//word = string_replace(word, "@" + extractedText, ""); //replaces color code word with string
	        word = string_replace(word, string_char_at(word, 1) + string_char_at(word, 2), ""); // Replace color code with an empty string
        } else {
            draw_set_color(c_white); // Reset color to default
        }

        // Check if drawing the current line with the next word would exceed the textbox width
        if (string_width(currentLine + " " + word) > textbox_width - border * 2 && i > 0) {
            // Move to the next line
            currentY += line_separation;
            currentX = textbox_x + text_x_offset[page] + border;
            currentLine = ""; // Reset current line
        }

        // Draw the word on the current line
		word_string = word;
        draw_text(currentX, currentY, word);
        currentX += string_width(word) + 10; // Adjust as needed
        currentLine += " " + word; // Add the word to the current line
    }
}

draw_set_color(c_white); // Reset color to default
