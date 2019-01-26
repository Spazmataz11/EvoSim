/// @description Insert description here
// You can write your code in this editor

var inst;
inst = instance_place(x, y, oPhoton);
if inst != noone{
	with (inst) instance_destroy();
	food += 1;
	show_debug_message(string(id) + "energy=" + string(energy));
}

steps += 1;
if steps >= room_speed{
steps = 0;
seconds += 1;
}

if seconds >= metabolicRate && food > 0{
	food -= 1;
	energy += 1;
	seconds = 0;
	show_debug_message(string(food));
}

if (energy >= 15){
	angleToSpawn = random_range(0,359);
	instance_create_depth(x + lengthdir_x(distanceToSpawn,angleToSpawn),y + lengthdir_y(distanceToSpawn,angleToSpawn),0,oReplicator);
	energy -= 10;
}

if food <= 0{
	show_debug_message(string(id)+"starved!")
	instance_destroy();	
}