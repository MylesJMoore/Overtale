// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetTextboxWordColor(_colorCode){
	var colorCode = _colorCode;
	switch (colorCode) {
            case "y":
				draw_set_color(c_yellow);
				break;
	        case "g":
	            draw_set_color(c_green);
	            break;
	        case "r":
	            draw_set_color(c_red);
	            break;
	        case "b":
	            draw_set_color(c_blue);
	            break;
	        case "B":
	            draw_set_color(c_black);
	            break;
	        case "a":
	            draw_set_color(c_aqua);
	            break;
	        case "p":
	            draw_set_color(c_fuchsia);
	            break;
	        case "G":
	            draw_set_color(c_ltgray);
	            break;
	        case "s":
	            draw_set_color(c_silver);
	            break;
	        case "d":
	            draw_set_color(c_dkgrey);
	            break;
	        case "o":
	            draw_set_color(c_orange);
	            break;
	        case "P":
	            draw_set_color(c_purple);
	            break;
	        case "O":
	            draw_set_color(c_olive);
	            break;
	        case "m":
	            draw_set_color(c_maroon);
	            break;
	        case "n":
	            draw_set_color(c_navy);
	            break;
	        case "l":
	            draw_set_color(c_lime);
	            break;
	        case "t":
	            draw_set_color(c_teal);
	            break;
	        case "R":
	            draw_set_color(c_gray);
	            break;
	        case "w":
	            draw_set_color(c_white);
	            break;
            default:
                draw_set_color(c_white); // Reset color to default if an unknown color code
                break;
    }
}