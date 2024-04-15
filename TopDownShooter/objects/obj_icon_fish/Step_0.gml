if keyboard_check(vk_right)
{
	image_xscale = 0.8;
	image_yscale = 0.8;
	image_alpha = 0.5;
	selected = false;
}

if keyboard_check(vk_left)
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 1;
	obj_text_menu2.Activate_Text_Box(description);
	selected = true;
}

if (selected = true && keyboard_check(vk_enter))
{
	room_goto(rm_1);
}