if (keyboard_check(ord("1")))
{
	global.playerHP += 20;	
	global.playerGold -= global.itemCost[ShopItem.HealthPotion];
	room_goto(rm_pikachu);
}

if (keyboard_check(ord("2")))
{
	global.playerDamage += 1;	
	global.playerGold -= global.itemCost[ShopItem.DamageBoost];
	room_goto(rm_pikachu);
}

if (keyboard_check(ord("3")))
{
	global.playerMoveSpeed += 1;	
	global.playerGold -= global.itemCost[ShopItem.SpeedBoost];
	room_goto(rm_pikachu);
}
