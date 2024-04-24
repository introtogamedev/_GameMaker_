// Destroy the enemy instance
//instance_destroy();
current_hp -= global.playerDamage;

// Change sprite color to red
image_blend = c_red;

// Set an alarm to revert the color change
alarm[0] = room_speed * 0.2; // Change back after 0.5 seconds

// Optional: Add effects, like a sound or explosion
// instance_create_layer(x, y, "Effects", obj_explosion);

// Destroy the bullet
with (other) {
    instance_destroy();
}
