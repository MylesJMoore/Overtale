/// @desc Start Battle
//Destroy Menu Instances before moving to next room
layer_destroy_instances(global.playerStatusLayerId);
layer_destroy_instances(global.playerInformationLayerId);
layer_destroy_instances(global.menuOptionLayerId);
layer_destroy_instances(global.menuTemplateOptionLayerId);

room_goto(rBattleRoom);
oPlayer.visible = false;
oPlayer.x = 0;
oPlayer.y = 0;
oPlayer.can_move = false;