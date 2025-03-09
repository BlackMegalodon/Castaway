//Inputs
var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if ((dx != 0) or (dy != 0))
{
	var I = sqrt(dx*dx + dy*dy);
	dx /= I;
	dy /= I;
}

hspeed= dx * 5;
vspeed= dy * 5;