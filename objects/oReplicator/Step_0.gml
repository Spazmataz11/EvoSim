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
		//show_debug_message(string(id) + "mass=" + string(mass));
	}
	
	if seconds >= Genotype[0,0] && mass > 0{
	mass -= 1;
	energy += 1;
	seconds = 0;
	//show_debug_message(string(energy));
	}
	
	if mass <= 0{
		show_debug_message(string(id)+"starved!")
		instance_destroy();	
	}
	
}

else{
	
}

if Phenotype[1] == 1{
	if (energy >= Genotype[1,0]){
		repeat(Genotype[1,1]){
			var child = instance_create_layer(x + lengthdir_x(Genotype[1,3],Genotype[1,4]),y + lengthdir_y(Genotype[1,3],Genotype[1,4]),"Instances",oReplicator); //creates child and saves it's unique ID into a variable
			child.parent = id; //sets the parent body of the arm to this object
			child.Genotype[0,0] = sGeneMutator(Genotype[0,0],100,2);
			child.Genotype[1,0] = sGeneMutator(Genotype[1,0],100,2);
			child.Genotype[1,1] = sGeneMutator(Genotype[1,1],100,2);
			child.Genotype[1,2] = sGeneMutator(Genotype[1,2],100,2);
			child.mass = Genotype[1,2];
			child.Genotype[1,3] = sGeneMutator(Genotype[1,3],100,2);
			child.Genotype[1,4] = sGeneMutator(Genotype[1,4],359,50);
			
			energy -= Genotype[1,2]; //parting gift
		}
		
	}
}






