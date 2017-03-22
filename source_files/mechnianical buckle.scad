/*this mechanical buckle allows the strap to pass in one direction
the moving part moves up and down
moving up allows the strap to pass
moving down will hold on the satrap and lock it in the place
it could be used in tightning the strap for the tourniquet
instead of using dual lock velcro
**this still work in progress and not finished yet

*/
cylinder_r=2;
buckle_l=15;
buckle_w=62;
buckle_h=10;
wall_b=3;
clr=.4;
mech_t=3;
mech_t2=2;
mech_w1=4;
mech_w2=9;




difference(){
    cube([buckle_l,buckle_w,buckle_h]);
      translate([wall_b,wall_b,0])  cube([buckle_l-2*wall_b,buckle_w-2*wall_b,buckle_h]);
}
//the inside cyl
//difference(){
translate([0,wall_b+mech_t,0])hull(){//the body of the curve

translate([buckle_l/2-2,0,0])cube([.1,buckle_w-2*(wall_b+mech_t),.1]);
translate([buckle_l/2-5,0,6])cube([.1,buckle_w-2*(wall_b+mech_t),.1]);
cube([.1,buckle_w-2*(wall_b+mech_t),.1]);
}

//translate([buckle_l/2,0,3])rotate([-90,0,0])cylinder(r=cylinder_r+1,h=buckle_w);//the curvy cut
//}
//translate([buckle_l/2,wall_b+2*mech_t,2.84])rotate([-90,0,0])cylinder(r=cylinder_r,h=buckle_w-2*wall_b-4*mech_t,$fn=6);
hull(){
translate([buckle_l/2-cylinder_r/2,wall_b+2*mech_t,0])cube([cylinder_r,buckle_w-2*wall_b-4*mech_t,.1]);

translate([buckle_l/2-cylinder_r,wall_b+2*mech_t,cylinder_r])cube([2*cylinder_r,buckle_w-2*wall_b-4*mech_t,.1]);
translate([buckle_l/2-cylinder_r,wall_b+2*mech_t,buckle_h])cube([2*cylinder_r,buckle_w-2*wall_b-4*mech_t,.1]);
}
//end of inside cyl

//mechanicals
module mechs(){
translate([.5*buckle_l-mech_w1/2+clr,wall_b+mech_t-clr,mech_t2+clr])cube([mech_w1-2*clr,mech_t+clr,2*cylinder_r-mech_t2-2*clr]);//neck

translate([.5*buckle_l-mech_w2/2+clr,wall_b+clr,mech_t2+clr])cube([mech_w2-2*clr,mech_t-2*clr,2*cylinder_r-mech_t2-2*clr]);//head


//cavity
difference(){
translate([0,wall_b,0])cube([buckle_l,2*mech_t-clr,buckle_h]);



translate([.5*buckle_l-mech_w1/2,wall_b+mech_t-clr,mech_t2])cube([mech_w1,mech_t+clr,buckle_h-2*mech_t2-clr]);//neck

translate([.5*buckle_l-mech_w2/2,wall_b,mech_t2])cube([mech_w2,mech_t,buckle_h-2*mech_t2-clr]);//head

} 
    
}
mechs();
translate([0,buckle_w,0])mirror([0,1,0])mechs();