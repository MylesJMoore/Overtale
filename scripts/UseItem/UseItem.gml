
function UseItem(itemNum) {
	var StartingHP = global.player_hp;
	var Healed = false;
	var ItemKeep = false;
	var PrevArmor = "";
	var PrevWeapon = "";
	
	var border_l = 320 - (oBulletBoard.current_width / 2);
	var border_u = 384 - oBulletBoard.current_height;
	
	global.monster[0].Dialogue = instance_create_depth(border_l + 30, border_u + 15, -500, oTextElement);
	global.monster[0].Dialogue.CanAdvance = true;
	
	if (global.item[itemNum] == "Old Milk") {
		global.player_hp -= 4;
		global.monster[0].Dialogue.TextToDraw = "* You drank the Old Milk.&* It's really stinky!";
		audio_play_sound(sndHurt, 0, false);
		Healed = false;
	}
	
	if (global.item[itemNum] == "Pie") {
		global.player_hp += 99;
		global.monster[0].Dialogue.TextToDraw = "* You ate the Butterscotch Pie.&";
	}
	
	if (global.item[itemNum] == "Stick") {
		global.monster[0].Dialogue.TextToDraw = "* You threw the Stick.&* Then you picked it back up&  again.";
	}
	
	if (global.item[itemNum] == "L.Hero") {
		global.player_hp += 40;
		global.player_attack += 4;
		global.monster[0].Dialogue.TextToDraw = "* You ate the Legendary Hero.&* ATTACK increased by 4!&";
	}
	
	if (global.item[itemNum] == "S.Apron") {
		global.monster[0].Dialogue.TextToDraw = "* You donned the Stained Apron.";
		PrevArmor = global.player_armor;
		global.player_armor = global.item[itemNum];
	}
	
	if (PrevArmor != "")
		global.item[itemNum] = PrevArmor;
	if (PrevWeapon != "")
		global.item[itemNum] = PrevWeapon;
	if (StartingHP < global.player_hp) {
		audio_play_sound(sndHeal, 1, false);
		if !ItemKeep {
			global.item[itemNum] = "";
			Healed = true;
		}
		if (global.player_hp >= global.player_max_hp) {
			global.monster[0].Dialogue.TextToDraw += "* Your HP was maxed out!";
		}
		else {
			global.monster[0].Dialogue.TextToDraw += "* You recovered " + string(global.player_hp - StartingHP) + " HP!";
		}
	}
	else {
		audio_play_sound(sndItem, 1, false);
	}
	
	global.player_hp = clamp(global.player_hp, 0, global.player_max_hp);
	for (var i = 0; i < array_length(global.item) - 1; i++) {
		if (global.item[i] == "") {
			global.item[i] = global.item[i + 1];
			global.item[i + 1] = "";
		}
	}
	if (Healed) {
		array_resize(global.item, array_length(global.item) - 1);
	}
}