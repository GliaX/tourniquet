/*
the buckle design part are
1- the body is a soft edges cubic shape takes its width from "variables.h" to keep in shape with rest of parts,and its length and hight are also from the "variables.h"
2- the cut inside the buckle is made of  half cylinder with some 4 teeth,
it was made by designing half cylinder and have 4 triangular cuts in it "the triange is a cylinder with $fn=3"

*/
include <variables.scad>;

buckle_h=5;//buckle hight
buckle_l=30;//buckle length
tooth_l=4;//the triangular tooth length
tooth_g=2;//gap between the teeth
tooth_y_p=[7,13,23,29];//tooth y posisioning
tooth_space=tooth_g+tooth_l;
tooth_num=strap_w/tooth_space;
module buk_clear1(){//the cut design generator

difference(){//the curvy slot
    translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2)+strap_t,h=strap_w,$fn=50);//the cylinder
    
    
    translate([0,0,-strap_t])cube([(buckle_h/2)+strap_t,strap_w,(buckle_h/2)+strap_t+(buckle_h/2)+strap_t*2]);

   translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2),h=strap_w,$fn=50);//the cylinder

} //end of the trisangles cut
}







module buk_clear2(){//the cut design generator

difference(){//as shown before it is a cylinder with 4 triangular cuts
    translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2)+strap_t,h=strap_w,$fn=50);//the cylinder
    
    
    //the triangular cuts shifted in place
    for(space=[0:1:tooth_num]){
    
translate([0,tooth_space*space,(buckle_h/2)])difference(){
rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=10);
    translate([-buckle_h/2,0,0])cube([buckle_h,tooth_l,buckle_h/2]);
}
    }
    translate([0,0,-strap_t])cube([(buckle_h/2)+strap_t,strap_w,(buckle_h/2)+strap_t+(buckle_h/2)+strap_t*2]);

} //end of the trisangles cut
}

difference(){
hull(){//this is the cube with soft edges done by "hull" between 4 spheres seperated in to its corners
    
    translate([.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
}
   

   translate([buckle_l*.8,groov_p_x,0]) buk_clear1();// first cut
    translate([buckle_l*.2,groov_p_x,0]) mirror([1,0,0])buk_clear2();//the other cut shifted and mirrored
}


//buk_clear();

/*
difference(){
translate([0,tooth_space*space,(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=10);
    translate([-buckle_h/2,0,0])cube([buckle_h,tooth_l,buckle_h/2]);
}
*/