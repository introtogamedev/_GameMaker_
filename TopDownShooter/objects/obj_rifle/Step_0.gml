//when player touches gun, they pick it up
if (place_meeting(x,y,obj_player_fish))
{
	taken = true;
	y = obj_player_fish.y + 6;
	x = obj_player_fish.x;
}

if (taken = true)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	if (x < mouse_x)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;
	}
	
	if (room = rm_1_ocean)
	{
		image_angle = point_direction(x,y,obj_enemy_EvilFish.x, obj_enemy_EvilFish.y);
	}
	else
	{
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	}
}