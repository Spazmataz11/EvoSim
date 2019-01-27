/// @param gene_to_mutate
/// @param upper_value_limit
/// @param range_of_mutation
geneToMutate = argument0;

upperGeneLimit = argument1;
mutationRange = argument2;
mutation = random_range(-mutationRange,mutationRange);
mutationChance = round(random_range(1,5));
show_debug_message("mutations script ran"+string(mutationChance));
if mutationChance == 3{
	geneToMutate += mutation;
	clamp(geneToMutate,0,upperGeneLimit);
	show_debug_message("Mutation!")
}

return geneToMutate;