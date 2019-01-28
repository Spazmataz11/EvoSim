/// @description Initialise genetics and game variables

var a;
a = 5; //one less than number of changeable values
repeat(6){ //repeat for number of genes
	changeableValues[a] = 0; // this array dictates wether or not behaviours/functions are expressed
	a -= 1;
}
//game variables
seconds = 0;
steps = 0;
parent = 0;
Reposition = false;
//changing values (non-genetic)
energy = 0; //~~?
mass = 10; //~~! parting gift of parent
spawnAngle = 0;

//inheritance logic




//genetic switches this will have to be completely re-written when we want them to mutate
var i;
i = 1; //one less than number of genes
repeat(2){ //repeat for number of genes
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