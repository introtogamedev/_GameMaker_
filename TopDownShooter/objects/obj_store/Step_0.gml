if (keyboard_check_pressed(ord("1")) && global.playerGold >= global.itemCost[ShopItem.HealthPotion])
{
	global.playerHP += 20;	
	global.playerGold -= global.itemCost[ShopItem.HealthPotion];
	
	health_bought = true;
}

if (keyboard_check_pressed(ord("2")) && global.playerGold >= global.itemCost[ShopItem.DamageBoost])
{
	global.playerDamage += 1;	
	global.playerGold -= global.itemCost[ShopItem.DamageBoost];
	
	damage_bought = true;
}

if (keyboard_check_pressed(ord("3")) && global.playerGold >= global.itemCost[ShopItem.SpeedBoost])
{
	global.playerMoveSpeed += 1;	
	global.playerGold -= global.itemCost[ShopItem.SpeedBoost];
	
	speed_bought = true;
}

if (keyboard_check_pressed(vk_space))
{
	global.EnemyGenerationSpeed *= 0.9;
	global.levelTime_pikachu *= 1.3;
	global.EnemyType1_MaxHP *= 1.3;
	global.BossType1_MaxHP *= 1.3;
	global.BulletDamage_Type1 *= 1.2;
	global.BulletDamage_Type2 *= 1.2;
	
	room_goto(rm_pikachu);
}