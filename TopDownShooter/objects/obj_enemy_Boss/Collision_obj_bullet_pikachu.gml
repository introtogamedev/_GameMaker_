// Destroy the enemy instance
//instance_destroy();
current_hp -= 1;

// Optional: Add effects, like a sound or explosion
// instance_create_layer(x, y, "Effects", obj_explosion);

// Destroy the bullet
with (other) {
    instance_destroy();
}
