/// @desc Open Menu
if(!global.menuOpen && oPlayer.can_move)
{
	global.menuOpen = true;
	//------------------------------------------------------------
	//Player Information Box
	var playerInfoX = 32; // Adjust these values for positioning
	var playerInfoY = 32;
	var playerHP = "HP " + string(global.player_hp) + "/" + string(global.player_max_hp);
	var playerLevel = "LV " + string(global.player_level);
	var options = [[playerLevel, -1],
	               [playerHP, -1],
				   ["G " + string(global.player_gold), -1]];
	var description = global.player_name;
	//Check if we have created the PlayerInformation already
	if(!global.playerInformationMenuCreated) {
		CreateMenu(playerInfoX, playerInfoY, options, false, true, description,"PlayerInformation");
		global.playerInformationMenuCreated = true;
	} else {
		instance_activate_layer("PlayerInformation");
		ShowMenu("PlayerInformation", global.playerInformationLayerId);
	}
	//------------------------------------------------------------
	//Menu Option Box
	var optionsX = playerInfoX;
	var optionsY = playerInfoY + 87; // Adjust for spacing
	options = [
					/*["Items", function() { 
									    var statusInfoX = 130; // Adjust these values for positioning
										var statusInfoY = 32;
										var options =  [["Glamburger", function() {show_debug_message("Eating Glamburger");}],
										            ["Glamburger", function() {show_debug_message("Eating Glamburger");}],
													["Glamburger", function() {show_debug_message("Eating Glamburger");}],
													["Otherburger", function() {show_debug_message("Eating Glamburger");}],
													["Nothingburger", function() {show_debug_message("Eating Glamburger");}]
													];
										var description = -1;
										Menu(statusInfoX, statusInfoY, options, false, false, description, "PlayerItems");
									   }],*/
						["Status", function() { 
								var statusInfoX = 130; // Adjust these values for positioning
								var statusInfoY = 32;
								var playerHP = "HP " + string(global.player_hp) + "/" + string(global.player_max_hp);
								var playerLevel = "LV " + string(global.player_level);
								var options = [[playerLevel, -1],
												[playerHP, -1],
												["", -1],
												["AT 0" + "(15)" + "  " + "EXP: 0", -1],
												["DF 0" + "(15)" + "  " + "NEXT: 10", -1],
												["", -1],
												["Wep: " + "Fisticuffs", -1],
												["Arm: " + "Piece of Toast", -1],
												["GOLD: " + string(global.player_gold), -1],
												];
								var description = global.player_name;
								//Check if we have created the PlayerStatus already
								if(!global.playerStatusMenuCreated) {
									CreateMenu(statusInfoX, statusInfoY, options, false, true, description, "PlayerStatus");
									global.playerStatusMenuCreated = true;
								} else {
									instance_activate_layer("PlayerStatus");
									ShowMenu("PlayerStatus", global.playerStatusLayerId);
								}
							}],
							["Items", function() { 
								var statusInfoX = 130; // Adjust these values for positioning
								var statusInfoY = 32;
								var options = global.MenuTemplateOptionItemsDetails;
								var description = -1;
						
								//Check if we have created the MenuOptionTemplate already
								if(!global.menuTemplateOptionCreated) {
									CreateMenu(statusInfoX, statusInfoY, options, false, false, description, "MenuOptionTemplate");
									global.menuTemplateOptionCreated = true;
								} else {
									instance_activate_layer("MenuOptionTemplate");
									ShowMenu("MenuOptionTemplate", global.menuTemplateOptionLayerId);
								}
							}]
				];
	var useHovermarkerSprite = false;
	description = -1;
	
	//Check if we have created the MenuOption already
	if(!global.menuOptionCreated) {
		CreateMenu(optionsX, optionsY, options, useHovermarkerSprite, false, description,"MenuOption");
		global.menuOptionCreated = true;
	} else {
		instance_activate_layer("MenuOption");
		ShowMenu("MenuOption", global.menuOptionLayerId);
	}
}
