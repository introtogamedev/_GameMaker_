// Basic enemy movement towards the player
if (!place_meeting(x, y, obj_wall)) move_towards_point(obj_player_pikachu.x, obj_player_pikachu.y, spd);

// Optional: Destroy the enemy if it goes outside the room bounds
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

if (current_hp <= 0) {
	global.playerScore += 1;
	// Adjust the number of coins and their spread
	var num_coins = 5; // Number of coins to spawn
	for (var i = 0; i < num_coins; i++) {
		var coin = instance_create_layer(x, y, "Instances", obj_coin);
		// You can add some randomness to the position to spread the coins out
		coin.x += irandom_range(-16, 16);
		coin.y += irandom_range(-16, 16);
	}
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
