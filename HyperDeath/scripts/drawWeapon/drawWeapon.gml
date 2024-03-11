// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawWeapon(){
	//offset weapon position off the center of player
var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);

//weapon flip if on left side
var _weaponYscl = 1;
if (aimDir > 90 && aimDir < 270 )
{
	_weaponYscl = -1;
}

draw_sprite_ext(sYoyoGun, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1)

}