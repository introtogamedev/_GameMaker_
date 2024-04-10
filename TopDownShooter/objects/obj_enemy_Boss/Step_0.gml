// Basic enemy movement towards the player
if (!place_meeting(x, y, obj_wall)) move_towards_point(obj_player_pikachu.x, obj_player_pikachu.y, spd);

// Optional: Destroy the enemy if it goes outside the room bounds
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

if (current_hp <= 0) {
	obj_player_pikachu.Score += 1;
	instance_destroy();
}


/// @function enemy_shoot_burst(x, y, direction, count, spread)
/// @description Shoots a burst of bullets in a spread
if (bullet_timer <= 100) {
	if (bullet_timer%33 == 0){
		for (var i = 0; i < 5; i++) {
			var dir = point_direction(x, y, obj_player_pikachu.x, obj_player_pikachu.y) - (45 / 2) + (45 / (5 - 1)) * i;
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
			bullet.direction = dir;
			bullet.speed = 4; // Adjust speed as necessary
		}
	}
	bullet_timer += 1;
}
else bullet_timer = 0;
