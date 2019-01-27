/// @description Initialise genetics and game variables

//game variables
seconds = 0;
steps = 0;
parent = 0;

//changing values (non-genetic)
energy = 0; //~~?
mass = 10; //~~! parting gift of parent


//inheritance logic




//genetic switches this will have to be completely re-written when we want them to mutate
var i;
i = 1; //one less than number of genes
repeat(2){ //repeat for number of genes
	Phenotype[i] = 1; // this array dictates wether or not behaviours/functions are expressed
	i -= 1;
}





//variables that need to be linked to genes
energyCap = 20;

distanceToSpawn = 20;
angleToSpawn = random_range(0,359);
metabolicRate = 3;
energyThreshold = 15;

show_debug_message("New replicator!" + string(id));