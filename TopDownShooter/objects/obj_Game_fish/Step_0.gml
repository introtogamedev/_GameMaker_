if (global.fishHP <= 0) room_goto(rm_lose);



//music: when background music stops playing, play again

if (room = rm_1_ocean)
{
	if (!audio_is_playing(snd_ocean))
	{
		audio_play_sound(snd_ocean, 10, false);
	}
}

if (global.fishScore > 49)
{
	if (global.fishGunTimer < duration)
	{
		obj_gun_obtained.visible = true;
		obj_gun_obtained.x = obj_camera.x + 130;
		obj_gun_obtained.y = obj_camera.y + 60;
		global.fishGunTimer++;
	}
	else
	{
		obj_gun_obtained.visible = false;
	}
}