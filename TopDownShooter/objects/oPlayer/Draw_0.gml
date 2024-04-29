/// @description Insert description here
// You can write your code in this editor

//draw weapon bottom if top player
if (aimDir >= 0 && aimDir < 180){
drawWeapon();
}



//draw pl
draw_self();

draw_text(x, y, string(p_health));

//draw weapon top if below player 
if (aimDir >= 180 && aimDir <360){
drawWeapon();
}