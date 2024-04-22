// Define movement speed
moveSpeed = 4;

Score = 0;

max_hp = 30;
HP = 30;

bullet_timer = 0;



//--- DIFFERENNT CHARACTERS ---

//fish avatar
if (room = rm_1)
{
	sprite_index = spr_fish;
}

//pikachu
if (room = rm_pikachu)
{
	sprite_index = spr_pikachu;
}
	
	
	
//gravity
//gravity
falling_gravity = 1;
falling_max_velocity = 5;

jump_acceleration = 2;
jump_max_velocity = 5;

vertical_velocity = 0;