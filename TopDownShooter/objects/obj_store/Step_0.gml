if (keyboard_check_pressed(ord("1")) && global.playerGold >= global.itemCost[ShopItem.HealthPotion])
{
	global.playerHP += 20;	
	global.playerGold -= global.itemCost[ShopItem.HealthPotion];
}

if (keyboard_check_pressed(ord("2")) && global.playerGold >= global.itemCost[ShopItem.DamageBoost])
{
	global.playerDamage += 1;	
	global.playerGold -= global.itemCost[ShopItem.DamageBoost];
}

if (keyboard_check_pressed(ord("3")) && global.playerGold >= global.itemCost[ShopItem.SpeedBoost])
{
	global.playerMoveSpeed += 1;	
	global.playerGold -= global.itemCost[ShopItem.SpeedBoost];
}

if (keyboard_check_pressed(vk_space))
{
	global.EnemyGenerationSpeed *= 0.9;
	room_goto(rm_pikachu);
}