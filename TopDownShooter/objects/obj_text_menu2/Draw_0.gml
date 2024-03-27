// Set the text color to red
draw_set_color(c_red);


// Draw the text
draw_text(600, 50, "- SELECT CHARACTER -");

draw_set_color(c_white);
draw_text(row1, 200, "fish (1)");
draw_text(row1, 250, "pikachu (2)");
draw_text(row1, 300, "n/a (3)");
draw_text(row1, 350, "n/a (4)");
draw_text(row1, 400, "n/a (5)");
draw_text(row2, 200, "n/a (6)");
draw_text(row2, 250, "n/a (7)");
draw_text(row2, 300, "n/a (8)");
draw_text(row2, 350, "n/a (9)");
draw_text(row2, 400, "n/a (0)");

if (keyboard_check(ord("1")))
{
	room_goto(rm_1);
}

if (keyboard_check(ord("2")))
{
	room_goto(rm_2);
}