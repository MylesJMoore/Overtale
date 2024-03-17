/// @desc Toggle Layers

show_debug_message("============= DEBUG ==============");
//PlayerStatus
show_debug_message("PlayerStatus Layer ID: " + string(global.playerStatusLayerId));
var lay_id = layer_get_id("PlayerStatus");
if layer_get_visible(lay_id)
{
	layer_set_visible(lay_id, false);
	show_debug_message("PlayerStatus is not visible");
}
else
{
	layer_set_visible(lay_id, true);
	show_debug_message("PlayerStatus is visible");
}

//PlayerInformation
show_debug_message("PlayerInformation Layer ID: " + string(global.playerInformationLayerId));
lay_id = layer_get_id("PlayerInformation");
if layer_get_visible(lay_id)
{
	layer_set_visible(lay_id, false);
	show_debug_message("PlayerInformation is not visible");
}
else
{
	layer_set_visible(lay_id, true);
	show_debug_message("PlayerInformation is visible");
}

//Menu Option Template (Items) **Can Make new ones!**
show_debug_message("MenuOptionTemplate Layer ID: " + string(global.menuTemplateOptionLayerId));
lay_id = layer_get_id("MenuOptionTemplate");
if layer_get_visible(lay_id)
{
	layer_set_visible(lay_id, false);
	show_debug_message("MenuOptionTemplate is not visible");
}
else
{
	layer_set_visible(lay_id, true);
	show_debug_message("MenuOptionTemplate is visible");
}

//MenuOption
show_debug_message("MenuOption Layer ID: " + string(global.menuOptionLayerId));
lay_id = layer_get_id("MenuOption");
if layer_get_visible(lay_id)
{
	layer_set_visible(lay_id, false);
	show_debug_message("MenuOption is not visible");
}
else
{
	layer_set_visible(lay_id, true);
	show_debug_message("MenuOption is visible");
}
show_debug_message("============= DEBUG ==============");