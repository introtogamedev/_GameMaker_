x = obj_camera.x + 370;
	y= obj_camera.y+ 210;

if (obj_rifle.taken = true)
{
	visible = true;
	
	timer++;
	if (timer > timer_duration)
	{
		instance_destroy();
	}
}