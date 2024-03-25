//when player touches gun, they pick it up
if (place_meeting(x,y,obj_player))
{
	taken = true;
	y = obj_player.y + 10;
	x = obj_player.x + 10;
}
