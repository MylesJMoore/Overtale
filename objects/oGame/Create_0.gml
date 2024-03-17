//Player Details
global.player_hp = 35;
global.player_max_hp = 50;
global.player_exp = 0;
global.player_level = 1;
global.player_gold = 999;
global.player_name = "Myles";
global.player_attack = 20;
global.player_defense = 0;
global.player_inv_frames = 0;
global.player_karma = 0;
global.player_karma_enabled = false;

//Battle System Menu Details
global.battle_border_width = 570;
global.battle_border_height = 120;

//Menu Settings
global.menuOpen = false;
global.menuLocked = false;
global.navigateOption = false;
global.dialogueBoxIsPresent = false;

//Menu Option
layer_create(-930, "MenuOption");
global.menuOptionLayerId = layer_get_id("MenuOption");
global.menuOptionCreated = false;
global.menuOptionDeactivated = false;

//Player Information
layer_create(-950, "PlayerInformation");
global.playerInformationLayerId = layer_get_id("PlayerInformation");
global.playerInformationMenuCreated = false;
global.playerInformationDeactivated = false;

//Player Status
layer_create(-900, "PlayerStatus");
global.playerStatusLayerId = layer_get_id("PlayerStatus");
global.playerStatusMenuCreated = false;
global.playerStatusDeactivated = false;

//Menu Option Template **Can Add New ones **
layer_create(-910, "MenuOptionTemplate");
global.menuTemplateOptionLayerId = layer_get_id("MenuOptionTemplate");
global.menuTemplateOptionCreated = false;
global.menuTemplateOptionDeactivated = false;

//PlayerStatus
if layer_get_visible(global.playerStatusLayerId)
{
	instance_deactivate_layer("PlayerStatus");
	global.playerStatusDeactivated = true;
}

//PlayerInformation
if layer_get_visible(global.playerInformationLayerId)
{
	instance_deactivate_layer("PlayerInformation");
	global.playerInformationDeactivated = true;
}

//Menu Option Template **Can Make new ones!**
if layer_get_visible(global.menuTemplateOptionLayerId)
{
	instance_deactivate_layer("MenuOptionTemplate");
	global.menuTemplateOptionDeactivated = true;
}

//MenuOption
if layer_get_visible(global.menuOptionLayerId)
{
	instance_deactivate_layer("MenuOption");
	global.menuOptionDeactivated = true;
}
