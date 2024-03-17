// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StringSplit(_text){
	var text = _text;
	var words = ds_list_create();
	var word = "";

	for (var i = 1; i <= string_length(text); i++) {
	    var char = string_char_at(text, i);
    
	    if (char == " ") {
	        ds_list_add(words, word);
	        word = "";
	    } else {
	        word += char;
	    }
	}

	if (string_length(word) > 0) {
	    ds_list_add(words, word);
	}

	return words;
}