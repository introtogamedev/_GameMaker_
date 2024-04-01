var itemX = 160; // Starting X position for drawing items
var itemY = 160; // Y position for items
var spacing = 400; // Space between items

// Draw Health Potion
draw_sprite(spr_health_potion, -1, itemX, itemY);
draw_text(itemX + 40, itemY, "Health Potion - Cost: " + string(global.itemCost[ShopItem.HealthPotion]));

// Move X for next item
itemX += spacing;

// Draw Damage Boost
draw_sprite(spr_damage_boost, -1, itemX, itemY);
draw_text(itemX + 40, itemY, "Damage Boost - Cost: " + string(global.itemCost[ShopItem.DamageBoost]));

// Move X for next item
itemX += spacing;

// Draw Speed Boost
draw_sprite(spr_speed_boost, -1, itemX, itemY);
draw_text(itemX + 40, itemY, "Speed Boost - Cost: " + string(global.itemCost[ShopItem.SpeedBoost]));
