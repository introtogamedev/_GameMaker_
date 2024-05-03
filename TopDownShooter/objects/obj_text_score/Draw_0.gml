// Set the text color to red
draw_set_color(c_red);


// Draw the text
draw_text(obj_player_fish.x - 60, obj_player_fish.y - 30, "YOUR SCORE: ");
draw_text(obj_player_fish.x + 55, obj_player_fish.y - 30, global.fishScore);
