// Spawn an enemy at a random position
instance_create_layer(irandom(room_width), irandom(room_height), "Instances", obj_enemy_EvilFish);

// Reset the alarm
alarm[0] = room_speed * 2;

if (room = rm_1_ocean)
{
	alarm[0] = room_speed * 0.5;
}
