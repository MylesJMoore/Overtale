//Battle Room Variables
global.border_width = 570;
global.border_height = 120;

//Battle Room Settings
global.menuOpen = false;
global.menuLocked = false;
global.navigateOption = false;
global.dialogueBoxIsPresent = false;
global.battleSelectionMenu = 0;
global.battleMenu = -1;
global.borderSurface = -1;

//Soul Settings
global.soul_speed = 4;
global.canFlee = true;

//Bullet Settings
global.bulletGravity = .2;

//Create Bullet Board
instance_create_depth(320, 384, 0, oBulletBoard); //-1500

//Create Button Controller
instance_create_depth(320, 384, -400, oButtonController);

//Create Soul
Soul = instance_create_depth(320, 384, -600, oSoul);
Soul.visible = false;

//Random Bullet Generation
//alarm[0] = 30;

//Create Monsters
global.monster[0] = instance_create_depth(300, 100,0,oTestMonster); //-3100

//Items
global.item = [];
global.item[0] = "Old Milk";
global.item[1] = "Stick";
global.item[2] = "L.Hero";
global.item[3] = "S.Apron";

//Player Armor/Weapon
global.player_armor = "Bandage";
global.player_weapon = "Real Knife";