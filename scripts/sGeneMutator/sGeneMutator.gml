/// @param gene_to_mutate
/// @param upper_value_limit
/// @param range_of_mutation
/// @param id of child
var geneToMutate = argument0;

var upperGeneLimit = argument1;
var mutationRange = argument2;
var childID = argument3
var mutation = round(random_range(-mutationRange,mutationRange));
var mutationChance = round(random_range(1,5));

if mutationChance == 3{
	geneToMutate += mutation;
	clamp(geneToMutate,0,upperGeneLimit);
	show_debug_message(string(childID)+"Mutated!");
	show_debug_message(string(geneToMutate)+" mutated by "+string(mutation));
}

return geneToMutate;