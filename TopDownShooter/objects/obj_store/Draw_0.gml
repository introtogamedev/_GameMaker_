var itemX = 160; // Starting X position for drawing items
var itemY = 250; // Y position for items
var spacing = 400; // Space between items


draw_text(100,50, "YOUR Lives Left:");
draw_text(250,50, global.playerHP);

draw_text(100,100, "YOUR Golds Left:");
draw_text(250,100, global.playerGold);

draw_text(100,150, "YOUR Current Damage:");
draw_text(300,150, global.playerDamage);

draw_text(100,200, "YOUR Current Speed:");
draw_text(300,200, global.playerMoveSpeed);

// Draw Health Potion
draw_sprite(spr_health_potion, -1, itemX, itemY);
draw_text(itemX, itemY + 200, "- Health Potion -");
draw_text(itemX + 50, itemY + 230, "HP + 20");
draw_text(itemX + 40, itemY + 260, "Cost: " + string(global.itemCost[ShopItem.HealthPotion]));
draw_text(itemX + 10, itemY + 290, "PRESS '1' TO BUY");

// Move X for next item
itemX += spacing;

// Draw Damage Boost
draw_sprite(spr_damage_boost, -1, itemX, itemY);
draw_text(itemX, itemY + 200, "- Damage Boost -");
draw_text(itemX + 50, itemY + 230, "Damage + 1");
draw_text(itemX + 40, itemY + 260, "Cost: " + string(global.itemCost[ShopItem.DamageBoost]));
draw_text(itemX + 10, itemY + 290, "PRESS '2' TO BUY");

// Move X for next item
itemX += spacing;

// Draw Speed Boost
draw_sprite(spr_speed_boost, -1, itemX, itemY);
draw_text(itemX, itemY + 200, "- Speed Boost -");
draw_text(itemX + 50, itemY + 230, "Speed + 1");
draw_text(itemX + 40, itemY + 260, "Cost: " + string(global.itemCost[ShopItem.SpeedBoost]));
draw_text(itemX + 10, itemY + 290, "PRESS '3' TO BUY");



if (health_bought = true)
{
	draw_set_color(c_yellow);
	draw_text(600,150,text_1);
	timer++;
	if (timer > duration || damage_bought = true || speed_bought = true)
	{
		draw_text(200,600,text);
		timer = 0;
		draw_set_color(c_white);
		health_bought = false;
	}
}

if (damage_bought = true)
{
	draw_set_color(c_yellow);
	draw_text(600,150,text_2);
	timer++;
	if (timer > duration || health_bought = true || speed_bought = true)
	{
		draw_text(600,200,text);
		timer = 0;
		draw_set_color(c_white);
		damage_bought = false;
	}
}

if (speed_bought = true)
{
	draw_set_color(c_yellow);
	draw_text(610,150,text_3);
	timer++;
	if (timer > duration || damage_bought = true || health_bought = true)
	{
		draw_text(200,600,text);
		timer = 0;
		draw_set_color(c_white);
		speed_bought = false;
	}
}