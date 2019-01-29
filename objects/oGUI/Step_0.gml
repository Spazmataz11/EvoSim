/// @description Insert description here
// You can write your code in this editor
draw_text(10, 10, "Replicator Info");

if (mouse_check_button_pressed(mb_left)){
     if (instance_position(mouse_x,mouse_y,!oProgenitor)){
        click_id = instance_position(mouse_x, mouse_y,all);
        buff1 = string(click_id.Genotype[1,0]);
        buff2 = string(click_id.Genotype[1,1]);
        buff3 = string(click_id.Genotype[1,2]);
        buff4 = string(click_id.Genotype[1,3]);
        buff5 = string(click_id.Genotype[1,4]); 
        buff6 = string(click_id.changeableValues[0]);
        text_on = true;
	}else{
		text_on = false;
	}

} 

if (text_on == true){
    if (instance_exists(click_id)){
        buff7 = string(click_id.changeableValues[1]);
        buff8 = string(click_id.changeableValues[2]);
        status = "Alive";
    }else{
        status = "DEAD!";
    }
    i = 1;
    draw_text(10,i30, "id: " + string(click_id));
    i++;
    draw_text(10,i30, "Status: " + status);
    i++;
    draw_text(10,i30, "Parent: " + buff6); 
    i++;
    draw_text(10,i30, "energyThreshold: " + buff1);
    i++;
    draw_text(10,i30, "Litter: " + buff2);
    i++;
    draw_text(10,i30, "partingGift: " + buff3);
    i++;
    draw_text(10,i30, "reproductionDistance: " + buff4);
    i++;
    draw_text(10,i30, "reproductionAngle: " + buff5); 
    i++;
    draw_text(10,i30, "Mass: " + buff7); 
    i++;
    draw_text(10,i30, "Energy: " + buff8); 
}