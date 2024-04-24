// Draw the enemy sprite
draw_self();

// HP Bar dimensions and position
var hp_bar_width = 50; // Width of the HP bar
var hp_bar_height = 5; // Height of the HP bar
var hp_bar_x = x - hp_bar_width / 2; // X position of the HP bar
var hp_bar_y = y - sprite_height / 2 - hp_bar_height - 5; // Y position of the HP bar

// Draw HP bar background
draw_set_color(c_black); // Set color to black for the background
draw_rectangle(hp_bar_x - 1, hp_bar_y - 1, hp_bar_x + hp_bar_width + 1, hp_bar_y + hp_bar_height + 1, false);
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_bar_width, hp_bar_y + hp_bar_height, false);

// Calculate the width of the HP foreground based on current HP
var hp_foreground_width = (current_hp / max_hp) * hp_bar_width;

// Draw HP bar foreground
draw_set_color(c_white); // Set color to red for the HP bar
draw_rectangle(hp_bar_x, hp_bar_y, hp_bar_x + hp_foreground_width, hp_bar_y + hp_bar_height, false);