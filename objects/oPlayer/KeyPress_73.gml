/// @desc Debugging Information

show_debug_message("============= DEBUG ==============");
var menuOpen = (global.menuOpen) ? "Yes" : "No";
show_debug_message("Is Menu Open? " + menuOpen);

var menuLocked = (global.menuLocked) ? "Yes" : "No";
show_debug_message("Is Menu Locked? " + menuLocked);

var navigatingOptions = (global.navigateOption) ? "Yes" : "No";
show_debug_message("Navigating Options? " + navigatingOptions);

var playerStatusDeactivated = (global.playerStatusDeactivated) ? "Yes" : "No";
show_debug_message("Player Status Deactivated? " + playerStatusDeactivated);

var playerInformationDeactivated = (global.playerInformationDeactivated) ? "Yes" : "No";
show_debug_message("Player Info Deactivated? " + playerInformationDeactivated);

var menuTemplateOptionDeactivated = (global.menuTemplateOptionDeactivated) ? "Yes" : "No";
show_debug_message("Menu Template Option Deactivated? " + menuTemplateOptionDeactivated);

var menuOptionDeactivated = (global.menuOptionDeactivated) ? "Yes" : "No";
show_debug_message("Menu Option Deactivated? " + menuOptionDeactivated);

show_debug_message("*****************");

//PlayerStatus
show_debug_message("PlayerStatus Layer ID: " + string(global.playerStatusLayerId));
var lay_id = layer_get_id("PlayerStatus");
if layer_get_visible(lay_id)
{
	show_debug_message("PlayerStatus is visible");
}
else
{
	show_debug_message("PlayerStatus is not visible");
}
var playerStatus = (global.playerStatusMenuCreated) ? "Yes" : "No";
show_debug_message("PlayerStatus Object is created? " + playerStatus);
show_debug_message("*****************");

//PlayerInformation
show_debug_message("PlayerInformation Layer ID: " + string(global.playerInformationLayerId));
lay_id = layer_get_id("PlayerInformation");
if layer_get_visible(lay_id)
{
	show_debug_message("PlayerInformation is visible");
}
else
{
	show_debug_message("PlayerInformation is not visible");
}
var playerInfo = (global.playerInformationMenuCreated) ? "Yes" : "No";
show_debug_message("PlayerInformation Object is created? " + playerInfo);
show_debug_message("*****************");

//Menu Option Template **Can Make new ones!**
show_debug_message("MenuOptionTemplate Layer ID: " + string(global.menuTemplateOptionLayerId));
lay_id = layer_get_id("MenuOptionTemplate");
if layer_get_visible(lay_id)
{
	show_debug_message("MenuOptionTemplate is visible");
}
else
{
	show_debug_message("MenuOptionTemplate is not visible");
}
var menuTemplateOption = (global.menuTemplateOptionCreated) ? "Yes" : "No";
show_debug_message("MenuOptionTemplate Object is created? " + menuTemplateOption);
show_debug_message("*****************");

//MenuOption
show_debug_message("MenuOption Layer ID: " + string(global.menuOptionLayerId));
lay_id = layer_get_id("MenuOption");
if layer_get_visible(lay_id)
{
	show_debug_message("MenuOption is visible");
}
else
{
	show_debug_message("MenuOption is not visible");
}
var menuOption = (global.menuOptionCreated) ? "Yes" : "No";
show_debug_message("MenuOption Object is created? " + menuOption);

show_debug_message("============= DEBUG ==============");