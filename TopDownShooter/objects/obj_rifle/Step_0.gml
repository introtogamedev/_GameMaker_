//when player touches gun, they pick it up
if (place_meeting(x,y,obj_player_fish))
{
	taken = true;
	y = obj_player_fish.y + 10;
	x = obj_player_fish.x + 10;
}
