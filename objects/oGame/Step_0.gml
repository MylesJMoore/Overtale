//Player Information Box
global.PlayerInfoMenuX = 32; // Adjust these values for positioning
global.PlayerInfoMenuY = 32;
global.PlayerInfoMenuHP = "HP " + string(global.player_hp) + "/" + string(global.player_max_hp);
global.PlayerInfoMenuLevel = "LV " + string(global.player_level);
global.PlayerInfoMenuOptions = [[global.PlayerInfoMenuLevel, -1],
		        [global.PlayerInfoMenuHP, -1],
				["G " + string(global.player_gold), -1]];
global.PlayerInfoMenuUseHovermarkerSprite = true;
global.PlayerInfoMenuDescription = global.player_name;

//Menu Template Option - *Items*
global.MenuTemplateOptionItemsDetails = [["Glamburger", -1],
						            ["Superburger", -1],
									["Glamburger", -1],
									["Stupidburger", -1],
									["Nothingburger", -1]
									];
	
//Menu Option Box
global.MenuOptionX = global.PlayerInfoMenuX;
global.MenuOptionY = global.PlayerInfoMenuY + 87; // Adjust for spacing
global.MenuOptionChoices = [["Items", function() { 
					global.MenuOptionItemsX = 130; // Adjust these values for positioning
					global.MenuOptionItemsY = 32;
					global.MenuOptionItemsDescription = -1;
					}],
	            ["Status", function() { 
					global.MenuOptionStatusX = 130; // Adjust these values for positioning
					global.MenuOptionStatusY = 32;
					global.MenuOptionStatusPlayerHP = "HP " + string(global.player_hp) + "/" + string(global.player_max_hp);
					global.MenuOptionStatusPlayerLevel = "LV " + string(global.player_level);
					global.MenuOptionStatusDetails = [[global.PlayerInfoMenuLevel, -1],
						            [global.PlayerInfoMenuHP, -1],
									["", -1],
									["AT 0" + "(15)" + "  " + "EXP: 0", -1],
						            ["DF 0" + "(15)" + "  " + "NEXT: 10", -1],
									["", -1],
									["Wep: " + "Fisticuffs", -1],
						            ["Arm: " + "Piece of Toast", -1],
									["GOLD: 666", -1],
									];
					global.MenuOptionStatusDescription = global.player_name;
					}],
	            ["Cell", function() { 
					global.MenuOptionCellX = 130; // Adjust these values for positioning
					global.MenuOptionCellY = 32;
					global.MenuOptionCellPlayerHP = "HP " + string(global.player_hp) + "/" + string(global.player_max_hp);
					global.MenuOptionCellPlayerLevel = "LV " + string(global.player_level);
					global.MenuOptionCellDetails = [[global.PlayerInfoMenuLevel, -1],
						            [global.PlayerInfoMenuHP, -1],
									["", -1],
									["AT 0" + "(15)" + "  " + "EXP: 0", -1],
						            ["DF 0" + "(15)" + "  " + "NEXT: 10", -1],
									["", -1],
									["Wep: " + "Fisticuffs", -1],
						            ["Arm: " + "Piece of Toast", -1],
									["GOLD: 666", -1],
									];
					global.MenuOptionCellDescription = global.player_name;
					}]];
global.MenuOptionUseHovermarkerSprite = true;
global.MenuOptionDescription = -1;