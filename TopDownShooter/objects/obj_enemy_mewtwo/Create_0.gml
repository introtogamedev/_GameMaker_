spd = 1; // Speed of the enemy

// Initialize HP
max_hp = 200; // Maximum HP
current_hp = max_hp; // Current HP, starts at maximum

bullet_timer = 0;
bullet_direction = point_direction(x, y, mouse_x, mouse_y);