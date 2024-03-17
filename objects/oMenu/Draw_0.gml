oPlayer.can_move = false;
draw_sprite_stretched(sTextbox, 0, x - margin, y - margin, widthFull + 5, heightFull);

draw_set_color(c_white);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (var l = 0; l < (optionsCount + _desc); l++)
{
    draw_set_color(c_white);
    
    if((l == 0) && (_desc))
    {
        draw_text(x, y, description);
    } else {
        var _str = options[l - _desc][0];
        var _highlight = (l - _desc == hover) ? c_yellow : c_white;

        draw_set_color(_highlight);

        // Check if useHovermarkerSprite is set to true
        if (useHovermarkerSprite == true)
        {
            // Use the Soul as the hover marker sprite
            var markerSprite = sSoul;

            if (l - _desc == hover)
            {
				//Sprite Modifiers
                var scale_factor = 0.5; // Adjust this value as needed for sprite size
                var sprite_width_scaled = markerSprite.image_xscale * scale_factor; 
                //var sprite_height_scaled = markerSprite.image_yscale * scale_factor; 
                var offset_y = 7; // Adjust this value to lower or raise the sprite
				var text_offset_x = 7; // Adjust this value to move text left or right

                // Draw the scaled sprite with proper alignment and offset
                draw_sprite_ext(markerSprite, 0, x + margin, y + l * heightLine + offset_y, scale_factor, scale_factor, 0, c_white, 1);

                // Draw the text next to the sprite with some spacing
                draw_set_color(_highlight);
                draw_text(x + margin + sprite_width_scaled + text_offset_x, y + l * heightLine, _str);
            }
            else
            {
                // Draw the text without the sprite
                draw_text(x + margin, y + l * heightLine, _str);
            }
        }
        else
        {
			//Check if set to Display Only
			if(displayOnly) 
			{
				// Set text color to white and do not use the hovermarker
				 _highlight = c_white;
			} else {
				 // Use the original hovermarker
				_str = (_highlight == c_yellow) ? hovermarker + _str : _str;
			}

            // Draw the text
            draw_set_color(_highlight);
            draw_text(x + margin, y + l * heightLine, _str);
        }
    }
}
