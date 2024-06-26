// Initialize movement variables
var moveX = 0;
var moveY = 0;

// Check for WASD key presses and adjust movement variables
/*
if (keyboard_check(ord("W")) && !place_meeting(x, y - global.fishMoveSpeed, obj_wall)) {
    moveY -= 1;
}
*/
if (keyboard_check(ord("S")) && !place_meeting(x, y + global.fishMoveSpeed, obj_wall)) {
    moveY += 1;
}
if (keyboard_check(ord("A")) && !place_meeting(x - global.fishMoveSpeed, y, obj_wall)) {
    moveX -= 1;
	image_xscale = -1;
}
if (keyboard_check(ord("D")) && !place_meeting(x + global.fishMoveSpeed, y, obj_wall)) {
    moveX += 1;
	image_xscale = 1;
}


// Apply movement
x += moveX * global.fishMoveSpeed;
y += moveY * global.fishMoveSpeed;


// Shooting with mouse
if (mouse_check_button_pressed(mb_left)) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
	
	//sound effects
	if (obj_bullet_player.sprite_index = spr_bullet)
	{
		audio_play_sound(snd_bubble,10,false);
	}
	if (obj_bullet_player.sprite_index = spr_bullet_rifle)
	{
		audio_play_sound(snd_gun,10,false);
	}
}


//camera
if (x > obj_camera.x + 350) obj_camera.x += global.fishMoveSpeed;
if (x < obj_camera.x + obj_camera.view_width - (350 + sprite_width)) obj_camera.x -= global.fishMoveSpeed;
if (y < obj_camera.y + 200) obj_camera.y -= global.fishMoveSpeed;
if (y > obj_camera.y + obj_camera.view_height - (200 + sprite_height)) obj_camera.y += global.fishMoveSpeed;


//room boundaries
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);



//GRAVITY

if (room = rm_1_ocean)
{
	vertical_velocity += falling_gravity;
	if (vertical_velocity > falling_max_velocity)
	{
		vertical_velocity = falling_max_velocity;
	}

	if (keyboard_check(ord("W")) || keyboard_check(vk_space))
	{
		vertical_velocity -= jump_acceleration;
	}
	
	if (vertical_velocity < -jump_max_velocity)
	{
		vertical_velocity = -jump_max_velocity;
	}

	y += vertical_velocity;
	
	
	//autoshooting
	if (instance_exists(obj_enemy_EvilFish))
	{
    // Get a list of all enemies in the room
    var enemy_list = instance_find(obj_enemy_EvilFish, 0);
    var enemy_count = instance_number(obj_enemy_EvilFish);
    
    for (var i = 0; i < enemy_count; i++)
    {
        var enemy = instance_find(obj_enemy_EvilFish, i);
        
        // Calculate direction towards enemy
        var dir = point_direction(x, y, enemy.x, enemy.y);
        
		// Shooting with mouse
		if (global.fishBulletTimer <= 100)
		{
			if (global.fishBulletTimer%25 == 0)
			{
				var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
				bullet.direction = dir;
				if (obj_bullet_player.sprite_index = spr_bullet)
				{
					audio_play_sound(snd_bubble,10,false);
				}
					if (obj_bullet_player.sprite_index = spr_bullet_rifle)
				{
					audio_play_sound(snd_gun,10,false);
				}
			}
			global.fishBulletTimer += 1;
		}
		else global.fishBulletTimer = 0;
	}
	}
}


// Check for collision with coins
var coin = instance_place(x, y, obj_coin_fish);
if (coin) {
    // Code to increase player's gold or score
    global.fishGold += 1;
    
    // Destroy the coin instance
    with (coin) instance_destroy();
}