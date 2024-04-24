if (global.playerHP <= 0) room_goto(rm_lose);

//music, keep playing when audio file stops
if (!audio_is_playing(snd_pokemon_theme))
{
	audio_play_sound(snd_pokemon_theme, 10, false);
}
