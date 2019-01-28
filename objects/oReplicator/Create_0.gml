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
steps = 0;






//genetic switches. this will have to be completely re-written when we want them to mutate
var i = 1;//one less than number of genes
repeat(i+1){ //repeat for number of genes
	Phenotype[i] = 1; // this array dictates wether or not behaviours/functions are expressed
	i -= 1;
}



//Genotype 0 = METABOLISM
/*
	* 0 = Metabolic Rate. Number of seconds until 1 food is converted into 1 energy
*/
Genotype[0,0] = 0;



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


show_debug_message("New replicator: " + string(id));