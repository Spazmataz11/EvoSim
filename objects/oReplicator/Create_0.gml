/// @description Initialise genetics and game variables



//changeableValues[] init
/*
	* 0-parent
	* 1-mass
	* 2-energy
	* 3-
	
	//!REMEMBER! to change the 'a' variable when adding/removing a variable in this array 
*/
var a=2; //one less than number of changeable values
repeat(a+1){
	changeableValues[a] = 0;
	a -= 1;
}

//non arrayable(?) changeable variables
Reposition = false;



//game variables (potential to move these to one timekeeping object?)
seconds = 0;
eatSeconds = 0;
steps = 0;






//Phenotype (on/off of genes)
/*
	* 0-
	* 1-
	* 2-
	* 3-
	* 4-
*/

Phenotype[0] = 1;
Phenotype[1] = 1;
Phenotype[2] = 1;






//Genotype 0 = METABOLISM
/*
	* 0 = Metabolic Rate. Number of seconds until 1 food is converted into 1 energy
	* 1 = Mass Type
	* 2 = Eats: (reference mass type) 0 = mass type of Photons
*/
Genotype[0,0] = 0;
Genotype[0,1] = 1;
Genotype[0,2] = 0;



//Genotype 1 = REPRODUCTION
/*
	* 0-Energy Threshold. Amount of energy required before reproduction occours
	* 1-Litter. Number of offspring per reproduction cycle
	* 2-Parting Gift. Amount of energy given to each child
	* 3-Distance. Distance a child spawn from the parent
	* 4-Angle. Angle at which the child spawns
*/
Genotype[1,0] = 0;
Genotype[1,1] = 0;
Genotype[1,2] = 0;
Genotype[1,3] = 0;
Genotype[1,4] = 0;

//variables that need to be linked to genes
touch = false;

show_debug_message("New replicator: " + string(id));