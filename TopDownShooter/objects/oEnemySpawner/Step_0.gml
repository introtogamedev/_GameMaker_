/// @description Insert description here
// You can write your code in this editor
spawn_rate -= 1;

// Spawn an enemy if spawn rate reaches 0 and number of enemies spawned is less than max
if (spawn_rate <= 0 && instance_number(obj_enemy) < max_enemies) {
    instance_create_depth(263, 130, 0, obj_enemy);
    spawn_rate = 60; // Reset spawn rate timer
}