/// @description Insert description here lane
// You can write your code in this editor
clamp(changeableValues[2],0,999);
clamp(changeableValues[1],0,999);
steps += 1;
if steps >= room_speed{ 
	steps = 0;
	seconds += 1;
	eatSeconds += 1;
}

#region //anti-stacking repositioning. This might have to go at some point. can forsee conflict
otherRep = instance_place(x,y,oReplicator)
if instance_exists(otherRep){
	Reposition = true;
    move_towards_point(otherRep.x+(random_range(-1,1)),otherRep.y +(random_range(-1,1)),-1);
}
if Reposition == true{
    if !instance_exists(otherRep){
        Reposition = false;
        speed = 0;
    }
}
#endregion

//event1: Touch: If the replicator touches object held in variable (currently Photon). object must have mass
if Phenotype[2] == 1{
	var touchInst;
	touchInst = instance_place(x, y, all);
	if touchInst != noone{
		touch = true;
	}
	else{
		touch = false;	
	}
}

//EAT!     Just need to sort out speed of eating. I think directly tie into metabolic rate.
if touch == true && touchInst.Genotype[0,1] == Genotype[0,2] && eatSeconds >= (Genotype[0,0]/4){
	touchInst.changeableValues[1] -= 1;
	changeableValues[1] += 1;
	eatSeconds = 0;
}



//Metabolism
if Phenotype[0] == 1{	
	if seconds >= Genotype[0,0] && changeableValues[1] > 0{
	changeableValues[1] -= 1;
	changeableValues[2] += 1;
	seconds = 0;
	}
	
	if changeableValues[1] <= 0{
		show_debug_message(string(id)+" starved!")
		instance_destroy();	
	}
	
}


if Phenotype[1] == 1{
	if (changeableValues[2] >= Genotype[1,0]) && (changeableValues[2] >= (Genotype[1,2] * Genotype[1,1])){
		repeat(Genotype[1,1]){
			var child = instance_create_layer(x + lengthdir_x(Genotype[1,3],Genotype[1,4]),y + lengthdir_y(Genotype[1,3],Genotype[1,4]),"Instances",oReplicator); //creates child and saves it's unique ID into a variable
			child.changeableValues[0] = id; //sets the parent body of the arm to this object
			child.Genotype[0,0] = sGeneMutator(Genotype[0,0],0,100,2,child.id,"metbolismRate");
			child.Genotype[0,1] = sGeneMutator(Genotype[0,0],1,1,2,child.id,"massType");
			child.Genotype[0,2] = sGeneMutator(Genotype[0,0],0,1,2,child.id,"Eats");
			child.Genotype[1,0] = sGeneMutator(Genotype[1,0],0,100,2,child.id,"energyThreshold");
			child.Genotype[1,1] = sGeneMutator(Genotype[1,1],0,100,2,child.id,"Litter");
			child.Genotype[1,2] = sGeneMutator(Genotype[1,2],0,100,2,child.id,"partingGift");
			child.changeableValues[1] = Genotype[1,2];
			child.Genotype[1,3] = sGeneMutator(Genotype[1,3],0,100,10,child.id,"reproductionDistance");
			child.Genotype[1,4] = sGeneMutator(Genotype[1,4],0,359,10,child.id,"reproductionAngle");
			
			changeableValues[2] -= Genotype[1,2]; //parting gift
		}		
	}
}