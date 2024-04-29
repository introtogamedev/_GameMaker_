draw_set_color(c_black);

// Draw the text
draw_text(obj_camera.x + 100,obj_camera.y + 25, "Time Left:");
draw_text(obj_camera.x + 200,obj_camera.y + 25, string(CurrentLevelTime));


draw_text(obj_camera.x + 100,obj_camera.y + 50, "Lives Left:");
draw_text(obj_camera.x + 200,obj_camera.y + 50, global.playerHP);


draw_text(obj_camera.x + 100,obj_camera.y + 75, "Gold earned:");
draw_text(obj_camera.x + 250,obj_camera.y + 75, global.playerGold);
