/*
the buckle design part are
1- the body is a soft edges cubic shape takes its width from "variables.h" to keep in shape with rest of parts,and its length and hight are also from the "variables.h"
2- the cut inside the buckle is made of  half cylinder with some 4 teeth,
it was made by designing half cylinder and have 4 triangular cuts in it "the triange is a cylinder with $fn=3"

*/
include <variables.scad>;

buckle_h=5;//buckle hight
buckle_l=30;//buckle length
buckle_bt=2;
tooth_l=4;//the triangular tooth length
tooth_y_p=[7,13,23,29];//tooth y posisioning

module buk_clear(){//the cut design generator



difference(){//as shown before it is a cylinder with 4 triangular cuts
    translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2)+strap_t,h=strap_w,$fn=50);//the cylinder
    
    
    //the triangular cuts shifted in place
 //   translate([0,tooth_y_p[0],(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=3);
    
    
  //  translate([0,tooth_y_p[1],(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=3);
    
    
    //translate([0,tooth_y_p[2],(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=3);
    
    
  //  translate([0,tooth_y_p[3],(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=tooth_l,$fn=3);
    
    translate([0,0,-strap_t])cube([(buckle_h/2)+strap_t,strap_w,(buckle_h/2)+strap_t+(buckle_h/2)+strap_t*2]);

    translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2),h=strap_w,$fn=50);//the cylinder

} //end of the trisangles cut
}

difference(){
hull(){//this is the cube with soft edges done by "hull" between 4 spheres seperated in to its corners
    
    translate([.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
}
   

   translate([buckle_l*.8,groov_p_x,0]) buk_clear();// first cut
    translate([buckle_l*.2,groov_p_x,0]) mirror([1,0,0])buk_clear();//the other cut shifted and mirrored
}


//buk_clear();

