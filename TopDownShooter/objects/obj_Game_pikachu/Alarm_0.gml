// Spawn an enemy at a random position
instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_enemy_meowth);

// Reset the alarm
alarm[0] = room_speed * global.EnemyGenerationSpeed;
