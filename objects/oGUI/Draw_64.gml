/// @description Insert description here
// You can write your code in this editor
draw_text(10, 10, "Replicator Info");

if ( mouse_check_button_pressed( mb_left ))
    {
     if (instance_position( mouse_x, mouse_y, oReplicator ) )
        {
        click_id = instance_position(mouse_x, mouse_y, oReplicator );
        buff1 = string(click_id.Genotype[1,0]);
        buff2 = string(click_id.Genotype[1,1]);
        buff3 = string(click_id.Genotype[1,2]);
        buff4 = string(click_id.Genotype[1,3]);
        buff5 = string(click_id.Genotype[1,4]); 
        buff6 = string(click_id.changeableValues[0]);
		buff9 = string(click_id.Genotype[0,0]); 
		buff10 = string(click_id.Genotype[0,1]);
		buff11 = string(click_id.Genotype[0,2]); 
            if (last_id != click_id) && (instance_exists(last_id)){
                last_id.image_blend = make_colour_hsv(0,0,255);
                click_id.image_blend = make_colour_hsv(255,255,255);
                last_id = click_id;
            }else{
                click_id.image_blend = make_colour_hsv(0,0,255);
				if (instance_exists(last_id)){
					last_id.image_blend = make_colour_hsv(255,255,255);
				}
            }
        text_on = true;
        }else{
        text_on = false;
        if (instance_exists(click_id)){
            click_id.image_blend = make_colour_hsv(0,0,255);
        }

    }

}

if (text_on == true){
    if (instance_exists(click_id)){
        buff7 = string(click_id.changeableValues[1]);
        buff8 = string(click_id.changeableValues[2]);
        status = "Alive";
    }else{
        status = "DEAD!";
        last_id = 0;
    }
    i = 1;
    draw_text(10,i*30, "id: " + string(click_id));
    i++;
	draw_text(10,i*30, "MetabolicRate: " + string(buff9));
    i++;
	draw_text(10,i*30, "massType: " + string(buff10));
    i++;
	draw_text(10,i*30, "eats: " + string(buff11));
    i++;
    draw_text(10,i*30, "Status: " + status);
    i++;
    draw_text(10,i*30, "Parent: " + buff6); 
    i++;
    draw_text(10,i*30, "energyThreshold: " + buff1);
    i++;
    draw_text(10,i*30, "Litter: " + buff2);
    i++;
    draw_text(10,i*30, "partingGift: " + buff3);
    i++;
    draw_text(10,i*30, "reproductionDistance: " + buff4);
    i++;
    draw_text(10,i*30, "reproductionAngle: " + buff5); 
    i++;
    draw_text(10,i*30, "Mass: " + buff7); 
    i++;
    draw_text(10,i*30, "Energy: " + buff8); 
}