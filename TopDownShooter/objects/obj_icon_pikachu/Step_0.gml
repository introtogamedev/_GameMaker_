if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	image_xscale = 0.8;
	image_yscale = 0.8;
	image_alpha = 0.5;
	selected = false;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 1;
	obj_text_menu2.Activate_Text_Box(description);
	selected = true;
	obj_text_menu2.Activate_Text_Box_2(description2);
}

if (selected = true && keyboard_check(vk_enter))
{
	room_goto(rm_pikachu);
}