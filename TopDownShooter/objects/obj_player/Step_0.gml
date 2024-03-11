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
    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    bullet.direction = point_direction(x, y, mouse_x, mouse_y);
    bullet.speed = 10; // Adjust bullet speed as needed
}
