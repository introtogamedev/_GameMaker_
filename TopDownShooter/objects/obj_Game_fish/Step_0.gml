if (obj_player_fish.HP <= 0) room_goto(rm_lose);



//when background music stops playing, play again
if (room = rm_1_ocean)
{
	if (!audio_is_playing(snd_ocean))
	{
		audio_play_sound(snd_ocean, 10, false);
	}
}