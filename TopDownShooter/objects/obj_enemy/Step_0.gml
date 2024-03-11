// Basic enemy movement towards the player
var spd = 2; // Speed of the enemy
if (!place_meeting(x, y, obj_wall)) move_towards_point(obj_player.x, obj_player.y, spd);

// Optional: Destroy the enemy if it goes outside the room bounds
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
