/// @description Insert description here
// You can write your code in this editor

//Chase the Player
if instance_exists(oPlayer)
{
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);
}

xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);  

//facing
if xspd > 0  
{
	face = 1;
}

if xspd < 0 
{
	face = -1;
}



//collision

if place_meeting(x + xspd, y , oWall) or place_meeting(x + xspd, y, oEnemyParent)
{
	xspd = 0;
}

if place_meeting(x, y + yspd , oWall) or place_meeting(x, y + yspd, oEnemyParent)
{
	yspd = 0;
}


//movement
x += xspd;
y += yspd;



// Inherit the parent event: Death code
event_inherited();

