/**
 * Create the strap holder
 * This section should consist of a bottom plate to hold the main strap
 * and a side section to hold the rod in place. 
**/

include <variables.scad>; // Include variables

module strap_holder(){
    difference(){
        union(){
            cube([strap_holder_w,holder_w,curve_t]);
            cube([strap_holder_w,strap_holder_l,strap_holder_t]);
        }
        for(i=[0:1:groov_array_length-1]) {
            translate([groov_p_x,groov_p_y[i],0])cube([strap_w,strap_t,curve_t]);
            translate([groov_p_x,strap_holder_l-strap_t-groov_p_y[i],0])cube([strap_w,strap_t,curve_t]);
        }
    }

    /** Curved section to hold rod in place.
      * Must primarily resist torque forces.
    **/

    difference(){
        translate([0,0,curve_or])
        rotate([-90,0,0])
        difference(){
            cylinder(r=curve_or,h=holder_w);
            translate([0,0,-curve_sup_t])cylinder(r=curve_ir,h=holder_w);
        }
        translate([0,-.1,0])cube(300);
    }

    translate([strap_holder_w,0,0])
    mirror([1,0,0])
    difference(){
        translate([0,0,curve_or])rotate([-90,0,0])difference(){
            cylinder(r=curve_or,h=holder_w);
            translate([0,0,-curve_sup_t])cylinder(r=curve_ir,h=holder_w);
        }
        translate([0,-.1,0])
        cube(300);
    }

    difference(){
        translate([0,0,curve_or+curve_ir])
        cube([strap_holder_w,holder_w,curve_t]);
        translate([window_y_p,0,curve_or+curve_ir])
        cube([curve_op,holder_w,curve_t]);
    }
}

strap_holder();