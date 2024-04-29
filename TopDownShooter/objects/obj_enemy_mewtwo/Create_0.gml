spd = 1; // Speed of the enemy

// Initialize HP
current_hp = global.BossType1_MaxHP; // Current HP, starts at maximum

bullet_timer = 0;
bullet_direction = point_direction(x, y, mouse_x, mouse_y);