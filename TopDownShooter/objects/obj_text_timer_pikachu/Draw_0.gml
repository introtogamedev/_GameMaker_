draw_set_color(c_black);

// Draw the text
draw_text(obj_camera.x + 100,obj_camera.y + 20, string(timer_text));


draw_text(obj_camera.x + 100,obj_camera.y + 50, "Lives Left:");
draw_text(obj_camera.x + 200,obj_camera.y + 50, global.playerHP);


draw_text(obj_camera.x + 100,obj_camera.y + 100, "Gold earned:");
draw_text(obj_camera.x + 250,obj_camera.y + 100, global.playerGold);
