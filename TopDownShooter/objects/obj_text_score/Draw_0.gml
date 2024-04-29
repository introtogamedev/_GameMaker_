// Set the text color to red
draw_set_color(c_red);


// Draw the text
draw_text(obj_player_fish.x - 20, obj_player_fish.y - 30, "YOUR SCORE: ");
draw_text(obj_player_fish.x + 90, obj_player_fish.y - 30, global.playerScore);
