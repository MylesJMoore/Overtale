/// @desc CreateMenu(x,y,options,useHovermakerSprite,displayOnly,description)
/// @arg x sets the x value of the menu
/// @arg y sets the y value of the menu
/// @arg options are the list of values in the menu displayed (array)
/// @arg useHovermakerSprite is a boolean that sets a sprite on hover
/// @arg displayOnly is a boolean that locks the menu options
/// @arg description is the text displayed at the top of the menu
function CreateMenu(_x, _y, _options, _useHovermarkerSprite = false, _displayOnly = false, _description = -1, _layerName) 
{
    // Get layer ID
    var layerId = layer_get_id(_layerName);
    
    // Debug message for layer ID
    show_debug_message("Layer ID for " + _layerName + ": " + string(layerId));

    // Create instance on the specified layer
    var _menu = instance_create_layer(_x, _y, layerId, oMenu);
    with (_menu)
    {
        options = _options;
        description = _description;
        optionsCount = array_length(_options);
        hovermarker = "* ";
        useHovermarkerSprite = _useHovermarkerSprite;
        displayOnly = _displayOnly;
        
        // Set up Size
        margin = 8;
        draw_set_font(fText);
        
        width = 1;
        if (_description != -1) {
            width = max(width, string_width(_description));
        }
        
        for (var i = 0; i < optionsCount; i++) {
            width = max(width, string_width(_options[i][0]));
        }
        
        width += string_width(hovermarker);
        
        heightLine = 17;
        height = heightLine * (optionsCount + !(description == -1));
        
        widthFull = width + margin * 2;
        heightFull = height + margin * 2;
    }
    return _menu;
}