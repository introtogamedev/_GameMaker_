timer++;
if (timer > 60)
{
	CurrentLevelTime -= 1;
	timer = 0;
}

if (CurrentLevelTime <= 0)
{
	room_goto(rm_store);
}

