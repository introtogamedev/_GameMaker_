// Initialize movement variables
var moveX = 0;
var moveY = 0;

// Check for WASD key presses and adjust movement variables
if (keyboard_check(ord("W")) && !place_meeting(x, y - moveSpeed, obj_wall)) {
    moveY -= 1;
}
if (keyboard_check(ord("S")) && !place_meeting(x, y + moveSpeed, obj_wall)) {
    moveY += 1;
}
if (keyboard_check(ord("A")) && !place_meeting(x - moveSpeed, y, obj_wall)) {
    moveX -= 1;
    //image_xscale = -1; // Flip sprite when moving left
	sprite_index = spr_player_pikachu_RunningLeft; // Use your left-facing sprite
}
if (keyboard_check(ord("D")) && !place_meeting(x + moveSpeed, y, obj_wall)) {
    moveX += 1;
    //image_xscale = 1; // Keep original orientation when moving right
	sprite_index = spr_player_pikachu_RunningRight; // Use your left-facing sprite
}

// Apply movement
x += moveX * moveSpeed;
y += moveY * moveSpeed;



/*
// Shooting with mouse
if (mouse_check_button_pressed(mb_left)) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet_pikachu);
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
}
*/
// Check if there are enemies in the room
if (instance_exists(obj_enemy_meowth))
{
    // Get a list of all enemies in the room
    var enemy_list = instance_find(obj_enemy_meowth, 0);
    var enemy_count = instance_number(obj_enemy_meowth);
    
    for (var i = 0; i < enemy_count; i++)
    {
        var enemy = instance_find(obj_enemy_meowth, i);
        
        // Calculate direction towards enemy
        var dir = point_direction(x, y, enemy.x, enemy.y);
        
		// Shooting with mouse
		if (bullet_timer <= 100) {
			if (bullet_timer%25 == 0){
				var bullet = instance_create_layer(x, y, "Instances", obj_bullet_pikachu);
				bullet.direction = dir;
				bullet.speed = 10; // Adjust speed as necessary
			}
			bullet_timer += 1;
		}
		else bullet_timer = 0;
        
        
        
        // Optional: set bullet to destroy after a certain time to prevent lag
    }
}


//camera
if (x > obj_camera.x + 350) obj_camera.x += moveSpeed;
if (x < obj_camera.x + obj_camera.view_width - (350 + sprite_width)) obj_camera.x -= moveSpeed;
if (y < obj_camera.y + 200) obj_camera.y -= moveSpeed;
if (y > obj_camera.y + obj_camera.view_height - (200 + sprite_height)) obj_camera.y += moveSpeed;


//room boundaries
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);


// Check for collision with coins
var coin = instance_place(x, y, obj_coin);
if (coin) {
    // Code to increase player's gold or score
    gold += 1;
    
    // Destroy the coin instance
    with (coin) instance_destroy();
}