// Menu Navigation Keys
var up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var confirm_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);
var cancel_key = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift);

// Check if the menu is globally locked
if ((!global.menuLocked || global.navigateOption) && global.menuOpen) {
    hover += (down_key - up_key) % optionsCount;

    // Wraps around options if you go below 0 or higher 
    hover = (hover + optionsCount) % optionsCount;
}

// Check for confirmation key
if (confirm_key && global.menuOpen) {
    var _func = options[hover][1];

    // Check if this option has a function to run
    if (_func != -1) {
        // Lock the menu globally after confirming an option
        global.menuLocked = true;
        global.navigateOption = true;
		
		switch (options[hover][0]) {
	        case "Status":
				HideMenu("PlayerInformation", global.playerInformationLayerId);
				HideMenu("MenuOption", global.menuOptionLayerId);
				HideMenu("MenuOptionTemplate", global.menuTemplateOptionLayerId);
				ShowMenu("PlayerStatus", global.playerStatusLayerId);
				_func();
	            break;
			case "Items":
				HideMenu("PlayerInformation", global.playerInformationLayerId);
				HideMenu("MenuOption", global.menuOptionLayerId);
				HideMenu("PlayerStatus", global.playerStatusLayerId);
				ShowMenu("MenuOptionTemplate", global.menuTemplateOptionLayerId);
				_func();
	            break;
		}
		
        // Debug messages
        show_debug_message("Selected Menu Option: " + string(options[hover][0]));
    }
}

// Check for Menu Exit
if (cancel_key) {
	show_debug_message("Cancel key is pressed");
	cancel_key = false;

    //Close the menu
	HideMenu("PlayerInformation", global.playerInformationLayerId);
	HideMenu("MenuOption", global.menuOptionLayerId);
	HideMenu("PlayerStatus", global.playerStatusLayerId);
	HideMenu("MenuOptionTemplate", global.menuTemplateOptionLayerId);
	global.navigateOption = false;
	global.menuLocked = false;
	global.menuOpen = false;
	oPlayer.can_move = true;
	draw_set_color(c_white);
	show_debug_message("Menu is closed");
}