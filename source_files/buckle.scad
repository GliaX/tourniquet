include <variables.scad>;

buckle_h=5;//buckle hight
buckle_l=30;//buckle length
buckle_bt=2;
module buk_clear(){
difference(){
    translate([0,0,(buckle_h/2)])rotate([-90,0,0])cylinder(r=(buckle_h/2)+strap_t,h=strap_w,$fn=50);
    
    translate([0,13,(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=4,$fn=3);
    
    
    translate([0,7,(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=4,$fn=3);
    
    
    translate([0,23,(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=4,$fn=3);
    
    
    translate([0,29,(buckle_h/2)])rotate([-90,0,0])rotate([0,0,60])cylinder(r=(buckle_h/2),h=4,$fn=3);
    
    translate([0,0,-strap_t])cube([(buckle_h/2)+strap_t,strap_w,(buckle_h/2)+strap_t+(buckle_h/2)+strap_t*2]);
}
}

//cube([buckle_l,strap_holder_w,buckle_h]);
difference(){
//cube([buckle_l,strap_holder_w,buckle_h]);
hull(){
    translate([.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,strap_holder_w-.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
    
    translate([buckle_l-.5*buckle_h,.5*buckle_h,.5*buckle_h])sphere(.5*buckle_h,$fn=30);
}
   

   translate([buckle_l*.8,groov_p_x,0]) buk_clear();
    translate([buckle_l*.2,groov_p_x,0]) mirror([1,0,0])buk_clear();
}