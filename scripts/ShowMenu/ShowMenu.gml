/// @desc ShowMenu(menuName,layerId)
/// @arg menuName is the name of the Layer the menu is on
/// @arg layerId is the layer id
function ShowMenu(menuName, layerId){
	var lay_id = layer_get_id(menuName);
	layer_set_visible(lay_id, true);
	show_debug_message("ShowMenu Script turned on " + menuName);
}