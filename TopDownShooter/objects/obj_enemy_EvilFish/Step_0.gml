// Basic enemy movement towards the player
if (!place_meeting(x, y, obj_wall)) move_towards_point(obj_player_fish.x, obj_player_fish.y, spd);

// Optional: Destroy the enemy if it goes outside the room bounds
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

if (HP <= 0) {
	obj_player_fish.Score += 1;
	instance_destroy();
}

// Shooting with mouse
if (bullet_timer <= 100) {
	if (bullet_timer%25 == 0){
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
		bullet.direction = bullet_direction;
	}
	bullet_timer += 1;
}
else bullet_timer = 0;
