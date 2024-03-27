// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weaponCreation(_sprite, _length, _bulletObj, _coolDown) constructor 
{
	sprite = _sprite;
	length = _length;
	bulletObj = _bulletObj;
	coolDown = _coolDown;
}
//Contruction Weapon



global.PlayerWeapons = array_create(0)


global.WeaponList = {
yoyoGun : new weaponCreation(
	sYoyoGun,
	sprite_get_bbox_right(sYoyoGun) - sprite_get_xoffset(sYoyoGun),
	oRedBullet,
	4),
	
starGun : new weaponCreation(
	sStarCannon,
	sprite_get_bbox_right(sStarCannon) - sprite_get_xoffset(sStarCannon),
	oYellowBullet,
	10)
}