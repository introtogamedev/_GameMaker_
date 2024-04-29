//if (mouse_check_button_pressed(mb_left) || keyboard_check(vk_space)) {
//	room_goto(rm_menu_select);
//}

if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))
{
	room_goto(rm_menu_select);
}