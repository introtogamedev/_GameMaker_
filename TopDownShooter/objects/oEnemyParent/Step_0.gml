/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, oDamageEnemy)
{
	var _inst = instance_place(x, y, oDamageEnemy);
	
	hp -= _inst.damage;
	
	_inst.destroy = true;
}

if hp <= 0
{
	instance_destroy();
}