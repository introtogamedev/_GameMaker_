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
}
if (keyboard_check(ord("D")) && !place_meeting(x + moveSpeed, y, obj_wall)) {
    moveX += 1;
}


// Apply movement
x += moveX * moveSpeed;
y += moveY * moveSpeed;




// Shooting with mouse
if (mouse_check_button_pressed(mb_left)) {
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
}


//camera
if (x > obj_camera.x + 350) obj_camera.x += moveSpeed;
if (x < obj_camera.x + obj_camera.view_width - (350 + sprite_width)) obj_camera.x -= moveSpeed;
if (y < obj_camera.y + 200) obj_camera.y -= moveSpeed;
if (y > obj_camera.y + obj_camera.view_height - (200 + sprite_height)) obj_camera.y += moveSpeed;


//room boundaries
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);

