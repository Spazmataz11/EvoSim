/// @description Initialise genetics and game variables

//game variables
randomize();
seconds = 0;
steps = 0;
parent = 0;

//changing values (non-genetic)
energy = 14; //~~?
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
litter = 1;
distanceToSpawn = 20;
angleToSpawn = 0;
metabolicRate = 3;
energyThreshold = 10;
partingGift = 5;
massType = 1;
eats = 0;

show_debug_message("The Progenitor is born! " + string(id));