//Once Animation ends, go to next room
room_goto(target_room);
oPlayer.x = target_x;
oPlayer.y = target_y;

//Fade Out
image_speed = -1;

//Destroy Menu Instances before moving to next room
layer_destroy_instances(global.playerStatusLayerId);
layer_destroy_instances(global.playerInformationLayerId);
layer_destroy_instances(global.menuOptionLayerId);
layer_destroy_instances(global.menuTemplateOptionLayerId);