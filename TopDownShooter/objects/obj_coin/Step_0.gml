// Check distance to player
var distance_to_player = point_distance(x, y, obj_player_pikachu.x, obj_player_pikachu.y);

if (distance_to_player < 100) { // Adjust the distance as needed
    // Move towards the player
    var move_speed = 10; // Adjust speed as needed
    var dir = point_direction(x, y, obj_player_pikachu.x, obj_player_pikachu.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
}
