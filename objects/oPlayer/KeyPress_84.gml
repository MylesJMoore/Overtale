/// @description Toggle Fullscreen
//window_set_fullscreen(!window_get_fullscreen());

show_debug_message("============= DEBUG ==============");
//PlayerStatus
show_debug_message("PlayerStatus Layer ID: " + string(global.playerStatusLayerId));
var lay_id = layer_get_id("PlayerStatus");
if layer_get_visible(lay_id)
{
	show_debug_message("PlayerStatus is deactivated");
	instance_deactivate_layer("PlayerStatus");
}
else
{
	show_debug_message("PlayerStatus is activated");
	instance_activate_layer("PlayerStatus");
}
var playerStatus = (global.playerStatusMenuCreated) ? "Yes" : "No";
show_debug_message("PlayerStatus Object is created? " + playerStatus);
show_debug_message("*****************");

//PlayerInformation
show_debug_message("PlayerInformation Layer ID: " + string(global.playerInformationLayerId));
lay_id = layer_get_id("PlayerInformation");
if layer_get_visible(lay_id)
{
	show_debug_message("PlayerInformation is deactivated");
	instance_deactivate_layer("PlayerInformation");
}
else
{
	show_debug_message("PlayerInformation is activated");
	instance_activate_layer("PlayerInformation");
}
var playerInfo = (global.playerInformationMenuCreated) ? "Yes" : "No";
show_debug_message("PlayerInformation Object is created? " + playerInfo);
show_debug_message("*****************");

//Menu Option Template **Can Make new ones!**
show_debug_message("MenuOptionTemplate Layer ID: " + string(global.menuTemplateOptionLayerId));
lay_id = layer_get_id("MenuOptionTemplate");
if layer_get_visible(lay_id)
{
	show_debug_message("MenuOptionTemplate is deactivated");
	instance_deactivate_layer("MenuOptionTemplate");
}
else
{
	show_debug_message("MenuOptionTemplate is activated");
	instance_activate_layer("MenuOptionTemplate");
}
var menuTemplateOption = (global.menuTemplateOptionCreated) ? "Yes" : "No";
show_debug_message("MenuOptionTemplate Object is created? " + menuTemplateOption);
show_debug_message("*****************");

//MenuOption
show_debug_message("MenuOption Layer ID: " + string(global.menuOptionLayerId));
lay_id = layer_get_id("MenuOption");
if layer_get_visible(lay_id)
{
	show_debug_message("MenuOption is deactivated");
	instance_deactivate_layer("MenuOption");
}
else
{
	show_debug_message("MenuOption is activated");
	instance_activate_layer("MenuOption");
}
var menuOption = (global.menuOptionCreated) ? "Yes" : "No";
show_debug_message("MenuOption Object is created? " + menuOption);

show_debug_message("============= DEBUG ==============");