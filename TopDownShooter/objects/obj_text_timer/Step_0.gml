timer++;
if (timer > 60)
{
	timer_text -= 1;
	timer = 0;
}

if (timer_text = 0)
{
	room_goto(rm_win);
}
