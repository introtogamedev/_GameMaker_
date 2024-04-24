if (keyboard_check_pressed(ord("1")) && global.fishGold >= global.fishitemCost[ShopItem.HealthPotion])
{
	global.fishHP += 20;	
	global.fishGold -= global.fishitemCost[ShopItem.HealthPotion];
	
	health_bought = true;
}

if (keyboard_check_pressed(ord("2")) && global.fishGold >= global.fishitemCost[ShopItem.DamageBoost])
{
	global.fishDamage += 1;	
	global.fishGold -= global.fishitemCost[ShopItem.DamageBoost];
	
	damage_bought = true;
}

if (keyboard_check_pressed(ord("3")) && global.fishGold >= global.fishitemCost[ShopItem.SpeedBoost])
{
	global.fishMoveSpeed += 1;	
	global.fishGold -= global.fishitemCost[ShopItem.SpeedBoost];
	
	speed_bought = true;
}

if (keyboard_check_pressed(vk_space))
{
	global.fishEnemyGenerationSpeed *= 0.9;
	room_goto(rm_1_ocean);
}