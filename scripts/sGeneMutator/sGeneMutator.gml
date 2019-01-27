/// @param gene_to_mutate
/// @param upper_value_limit
/// @param range_of_mutation
/// @param id of child
var geneToMutate = argument0;

var upperGeneLimit = argument1;
var mutationRange = argument2;
var childID = argument3;
var attribute = argument4;
var mutation = round(random_range(-mutationRange,mutationRange));
var mutationChance = round(random_range(1,20));

if mutationChance == 3{
	
	show_debug_message(string(childID)+" mutated!");
	show_debug_message(string(attribute)+" from "+string(geneToMutate)+" to "+string(geneToMutate + mutation));
	
	geneToMutate += mutation;
	clamp(geneToMutate,0,upperGeneLimit);
}

return geneToMutate;