//Key Bindings
var right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

//Check for no items
if(array_length(global.item) == 0) {
	ButtonSprites[2] = sMenuNoItems;
}

// Draw every button sprite with the "Unselected" form
for (var i = 0; i < 4; i++) {
	draw_sprite(ButtonSprites[i], 0, ButtonPositions_X[i], 430);
}

// To make sure that our menu is navigatable, we set the battleSelectionMenu variable to -1 when we don't want it
// I.E. during attacks or cutscenes
if (global.battleSelectionMenu > -1) {
	
	// Main menu
	if (global.battleMenu == 0) {
		if (left_key) {
			global.battleSelectionMenu -= 1;
			audio_play_sound(sndMenuMove, 1, false);
		}
		if (right_key) {
			global.battleSelectionMenu += 1;
			audio_play_sound(sndMenuMove, 1, false);
		}
			
		global.battleSelectionMenu = clamp(global.battleSelectionMenu, 0, 3);
		for (var i = 0; i < 4; i++) {
			draw_sprite(ButtonSprites[i], (global.battleSelectionMenu == i && !instance_exists(oBulletGenerator)), ButtonPositions_X[i], 430);
			if !instance_exists(oBulletGenerator) {
				draw_sprite(sSoul, 0, ButtonPositions_X[global.battleSelectionMenu] + 16, 452);  
			}
		}
	}
	
	// This forces the selection variable to stay within a certain range to prevent crashes and other weird oddities
	// Fight and ACT selection menu
	if (global.battleMenu == 1 || global.battleMenu == 2) {
		global.battleSelectionMenu = clamp(global.battleSelectionMenu, 0, array_length(global.monster) - 1);
		
		// Draws the health bar of the monsters, unless the monster doesn't want the health bar shown: "ShowHealthBar"
		for (var i = 0; i < array_length(global.monster); i++) {
			if instance_exists(global.monster[i]) {
				if (global.monster[i].ShowHealthBar) {
					var percent = (global.monster[i].MyHP / global.monster[i].MyMaxHP) * 100;
					draw_set_color(c_red);
					draw_rectangle(470, 287 + (30 * i), 570, 304 + (30 * i), false);
					draw_set_color(c_lime);
					draw_rectangle(470, 287 + (30 * i), 470 + percent, 304 + (30 * i), false);
				}
			}
		}
	}
		
	// Monster ACT menu
	if (global.battleMenu == 2.5)
		global.battleSelectionMenu = clamp(global.battleSelectionMenu, 0, array_length(global.monster[MonsterReferenceNum].Act) - 1);
		
	// Item menu
	if (global.battleMenu == 3) {
		global.battleSelectionMenu = clamp(global.battleSelectionMenu, 0, array_length(global.item) - 1);
	}
	
	//Vertical movement, "else" is for grid menus like ITEM and ACT commands
	if (global.battleMenu == 1 || global.battleMenu == 2 || global.battleMenu == 4) {
		draw_sprite(sSoul, 0, 63, 295 + (30 * global.battleSelectionMenu));
	} else if (global.battleMenu > 0) {
		draw_sprite(sSoul, 0, 63 + (250 * (global.battleSelectionMenu % 2)), 295 + (30 * floor(global.battleSelectionMenu / 2)));
	}
	
	//Back out of a menu
	if (keyboard_check_pressed(ord("X"))) {
		global.battleMenu = 0;
		global.battleSelectionMenu = BelowUIReferenceNum;
	}
	
	//Navigation Controls
	if (global.battleMenu != 2 && global.battleMenu != 2.5 && global.battleMenu != 3) {
		if (up_key && global.battleSelectionMenu > 0) {
			global.battleSelectionMenu -= 1;
		}	
		
		if (down_key) {
			global.battleSelectionMenu += 1;
		}	
	} else if(global.battleMenu == 2.5) {
		if (left_key) {
			global.battleSelectionMenu -= 1;
		}
		
		if (right_key) {
			global.battleSelectionMenu += 1;
		}	
	} else if(global.battleMenu == 3) {
		if (up_key && global.battleSelectionMenu > 0 && global.battleSelectionMenu != 1) {
			global.battleSelectionMenu -= 2;
		}	
		
		if (down_key) {
			global.battleSelectionMenu += 2;
		}	
		
		if (left_key) {
			global.battleSelectionMenu -= 1;
		}
		
		if (right_key) {
			global.battleSelectionMenu += 1;
		}		
	} else {
		if (up_key && global.battleSelectionMenu > 0) {
			global.battleSelectionMenu -= 2;
		}	
		
		if (down_key) {
			global.battleSelectionMenu += 2;
		}	
		
		if (left_key && global.battleMenu != 2) {
			global.battleSelectionMenu -= 1;
		}
		
		if (right_key) {
			global.battleSelectionMenu += 1;
		}	
	}
	
	
	// Confirm an input
	if keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter) {
		// A better way of writing "if (so and so)" repeatedly, useful for infinite cases
		
		//Check for no items, play a different sound for invalid option
		if(global.battleSelectionMenu == 2 && array_length(global.item) == 0) {
			audio_play_sound(sndDeselect, 1, false);
		} else {
			//Play Default Sound
			audio_play_sound(sndSelect, 1, false);
		}
		
		switch global.battleMenu {
			case 0:
				// FIGHT, ACT, ITEM, MERCY
				global.battleMenu = (global.battleSelectionMenu + 1);
				if (global.battleSelectionMenu == 2 && array_length(global.item) == 0) {
					global.battleMenu = 0;
					exit;
				}
				
				// Keeps your original option in mind on the four buttons at the bottom
				BelowUIReferenceNum = global.battleSelectionMenu;
				
				// Sets your input action back to the first option
				global.battleSelectionMenu = 0;
				
				// You MUST include this to get out of the loop, otherwise your action will not work
				break;
			case 1:
				// Target bar menu
				MonsterReferenceNum = global.battleSelectionMenu;
				global.MRN = MonsterReferenceNum;
				global.battleMenu = 1.5;
				global.battleSelectionMenu = 0;
				break;
			case 2:
				// ACT menu
				MonsterReferenceNum = global.battleSelectionMenu;
				global.MRN = MonsterReferenceNum;
				global.battleMenu = 2.5;
				global.battleSelectionMenu = 0;
				break;
			case 2.5:
				// ACT commands
				with (global.monster[global.MRN]) {
					event_user(global.battleSelectionMenu);
				}
				global.battleMenu = -2;
				global.battleSelectionMenu = -1;
				break;
			case 3:
				// Item menu
				UseItem(global.battleSelectionMenu);
				global.battleMenu = -2;
				global.battleSelectionMenu = -1;
				break;
			case 4:
				// Spare or Flee from a monster
				global.battleMenu = -1;
				global.battleSelectionMenu = 0;
				break;
		}
	}
}
