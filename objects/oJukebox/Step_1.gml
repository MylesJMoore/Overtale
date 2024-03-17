//-------------------------------------------------------
//Title Screen
//-------------------------------------------------------
if (room == rTitle && oTitle.image_index == 0 && !audio_is_playing(sndTitleMusic)) 
{
	audio_stop_sound(sndMenuMusic);
	audio_play_sound(sndTitleMusic,10,true);
}

//-------------------------------------------------------
//Menu Screen
//-------------------------------------------------------
if (room == rTitle && !audio_is_playing(sndMenuMusic)) 
{
	if ((oTitle.image_index == 1 || oTitle.image_index == 2 || oTitle.image_index == 3))
	{
	    audio_stop_sound(sndTitleMusic);
	    audio_play_sound(sndMenuMusic, 11, true);
	}
}

if (room != rTitle)
{
	audio_stop_sound(sndTitleMusic);
	audio_stop_sound(sndMenuMusic);
}

//-------------------------------------------------------
//Battle Room
//-------------------------------------------------------
if (!audio_is_playing(sndMainBattleTheme) && room = rBattleRoom) 
{
	audio_stop_sound(sndKrisRoom);
	audio_stop_sound(sndKrisHallway);
	audio_stop_sound(sndTitleMusic);
	audio_stop_sound(sndMenuMusic);
    audio_play_sound(sndMainBattleTheme, 11, true);
}


//-------------------------------------------------------
//Kris Room
//-------------------------------------------------------
if (!audio_is_playing(sndKrisRoom) && room = rKrisRoom) 
{
	audio_stop_sound(sndKrisHallway);
    audio_play_sound(sndKrisRoom, 11, true);
}

//-------------------------------------------------------
//Kris Hallway
//-------------------------------------------------------
if (!audio_is_playing(sndKrisHallway) && room = rKrisHallway) 
{
	audio_stop_sound(sndKrisRoom);
    audio_play_sound(sndKrisHallway, 11, true);
}