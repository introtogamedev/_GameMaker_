//
// Movement
//

moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd = 0;

// Spirite control
face = 0;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;

centerYOffset = -5;
centerY = y + centerYOffset;
centerXOffset = 0;

weaponOffsetDist = 4;


//aim
aimDir = 0;

shootTimer = 0;


//Add waepon to player array
array_push(global.PlayerWeapons, global.WeaponList.starGun);
array_push(global.PlayerWeapons, global.WeaponList.yoyoGun);


	
selectedWeapon = 0;
weapon = global.PlayerWeapons[selectedWeapon];