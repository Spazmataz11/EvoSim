/// @description Insert description here
// You can write your code in this editor

steps += 1;
if steps >= room_speed{ 
steps = 0;
seconds += 1;
} 

//Metabolism
if Phenotype[0] == 1{
	var inst;
	inst = instance_place(x, y, oPhoton);
	if inst != noone{
		with (inst) instance_destroy();
		mass += 1;
		show_debug_message(string(id) + "mass=" + string(mass));
	}
	
	if seconds >= metabolicRate && mass > 0{
	mass -= 1;
	energy += 1;
	seconds = 0;
	show_debug_message(string(energy));
	}
	
	if mass <= 0{
	show_debug_message(string(id)+"starved!")
	instance_destroy();	
	}
	
}

else{
	
}

if Phenotype[1] == 1{
	if (energy >= energyThreshold){
		//for loop that runs = to integer value of 'litter' Genotype array
		var child = instance_create_layer(x + lengthdir_x(distanceToSpawn,angleToSpawn),y + lengthdir_y(distanceToSpawn,angleToSpawn),"Instances",oReplicator); //creates child and saves it's unique ID into a variable
		child.parent = id; //sets the parent body of the arm to this object
		child.angleToSpawn = angleToSpawn;
		energy -= 10; //parting gift
	}
}






