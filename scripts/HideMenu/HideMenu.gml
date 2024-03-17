/// @desc HideMenu(menuName,layerId)
/// @arg menuName is the name of the Layer the menu is on
/// @arg layerId is the layer id
function HideMenu(menuName, layerId){
	var lay_id = layer_get_id(menuName);
	layer_set_visible(lay_id, false);
	show_debug_message("HideMenu Script turned off " + menuName);
}