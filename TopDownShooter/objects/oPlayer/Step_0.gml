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
shootKey = mouse_check_button(mb_left);
swapKey = mouse_check_button_pressed(mb_right);
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

//
//WeaponSwap
//
#region
var _playerWepons = global.PlayerWeapons;
if swapKey 
{
	selectedWeapon ++;
	if selectedWeapon >= array_length(_playerWepons)
	{
		selectedWeapon = 0;
	}
	weapon = _playerWepons[selectedWeapon];
}




#endregion


//
//Shoot Weapin
//
#region
if shootTimer > 0 {shootTimer --;};
if shootKey && shootTimer <= 0
{
	//timer
	shootTimer = weapon.coolDown;
	//shooting
	var xOffset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir);
	var yOffset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir)
	
	var _spread =  weapon.spread;
	var _spreadDiv = _spread / max(weapon.bulletNum-1, 1);
	
	//create right amout of bullet
	for (var i = 0; i < weapon.bulletNum; i++) 
	{
		var _bulletInst = instance_create_depth(x + xOffset, centerY + yOffset, depth - 100, weapon.bulletObj);
		with (_bulletInst)	//with makes it that we are coding within the instantce obj, other. is used to refernece the player object
		{
			dir = other.aimDir - _spread/2 + _spreadDiv*i;
		}
	}
}
#endregion
//depth
	depth = -bbox_bottom;


//Enemy Damage
if (place_meeting(x, y, oEnemyParent) and invincefFame <= 0)
{
	invincefFame = 30;
	p_health -= 1;	
}

if (invincefFame > 0)
{
	invincefFame -= 1;
}

//Death
if (p_health <= 0)
{
	room_goto(rm_lose);
}
