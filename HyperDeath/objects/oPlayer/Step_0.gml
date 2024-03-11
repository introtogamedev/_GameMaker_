/// @description Insert description here
// You can write your code in this editor

//
//Get Input
//
#region
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
#endregion


//
//Player Movement
//
#region
	// get direciton
	var _horizontalKey = rightKey - leftKey;
	var _verticalKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizontalKey, _verticalKey);
	
	//x and y spd
	var _spd = 0;
	var _inputLevel = point_distance(0, 0, _horizontalKey, _verticalKey);
	_inputLevel = clamp(_inputLevel, 0, 1)
	_spd = _inputLevel * moveSpd;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	//Collisions
	if place_meeting(x + xspd, y, oWall)
	{
		xspd = 0;	
	}
	
		if place_meeting(x, y + yspd, oWall)
	{
		yspd = 0;	
	}
	
	//Integrate Speed
	
	x += xspd;
	y += yspd;
	
#endregion

//
//aim
//
#region

centerY = y + centerYOffset;
aimDir = point_direction(x, centerY, mouse_x, mouse_y);

#endregion


//
//sprite Control
//
#region

	face = round(aimDir/90);
	if face == 4 {face = 0;}
	
	
	//animate
	if (xspd = 0 & yspd = 0)
	{
		image_index = 0;
	}
	
	
	//Set Player Spirit
	
	//mask_index = sprite[3];
	sprite_index = sprite[face];
#endregion


//depth
	depth = -bbox_bottom;