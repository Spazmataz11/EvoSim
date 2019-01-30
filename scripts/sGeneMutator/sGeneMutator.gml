/// @param gene_to_mutate
/// @param lower_value_limit
/// @param upper_value_limit
/// @param range_of_mutation
/// @param id of child
var geneToMutate = argument0;
var lowerGeneLimit = argument1
var upperGeneLimit = argument2;
var mutationRange = argument3;
var childID = argument4;
var attribute = argument5;
var mutation = round(random_range(-mutationRange,mutationRange));
var mutationChance = round(random_range(1,20));

if mutationChance == 3{
	
	show_debug_message(string(childID)+" mutated!");
	show_debug_message(string(attribute)+" from "+string(geneToMutate)+" to "+string(geneToMutate + mutation));
	
	geneToMutate += mutation;
	clamp(geneToMutate,lowerGeneLimit,upperGeneLimit);
}

return geneToMutate;