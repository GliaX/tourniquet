//buckle
$fn=100;
rad=45;
tooth_t=1.3;
tooth_w=4.5;
module tooth(){
hull(){
    translate([-.1,0,0])cube([.1,tooth_w,3]);
    translate([-tooth_t,0,3])cube([tooth_t,tooth_w,.1]);}}
    //function of tooth
module itooth(){
hull(){
    translate([-.1,-tooth_w,0])cube([.1,tooth_w,3]);
    translate([-tooth_t,-tooth_w,3])cube([tooth_t,tooth_w,.1]);}}
    
difference(){
union(){
intersection(){
translate([-15,-1.5,3.5])cube([30,52,8-3.5]);//the bow
translate([0,-1.5,-rad+8])rotate([-90,0,0])cylinder(r=rad,h=52);}
translate([-4,-1.5,0])cube([8,52,7.6+1.5]);// the hill
translate([-15,-1.5,0])cube([30,52,3.5]); //the cube on the bottom
}//the body
//the cylindrical cut inside Opposite the tooth
translate([-1,5.5,1.5])rotate([0,60,0])cube([6,38,5]);
    
hull(){//the cut though upword for working left side
    translate([5.5,7.5,0])cylinder(r=3,h=10);
    translate([5.5,49-7.5,0])cylinder(r=3,h=10);}
hull(){//the ramp cut
    translate([15,5.5,0])cube([.1,38,.5]);
    translate([8,5.5,0])cube([.1,38,3]);}
hull(){//the cut through upward for fixed side the right side
    translate([-7,7.5,0])cylinder(r=3,h=10);
    translate([-7,49-7.5,0])cylinder(r=3,h=10);}}
//tooth
translate([8.6,27,3.5])tooth();
translate([8.6,27+1.5+4.5,3.5])tooth();
translate([8.6,23,3.5])itooth();
translate([8.6,23-1.5-4.5,3.5])itooth();          
module signeture(){
linear_extrude(height=2, convexity=4)
                text(" Glia .Gaza V4", 
                     size=5,
                     font="Bitstream Vera Sans:style=Bold",
                     halign="center",
                     valign="center");}
//"Agency FB:style=Bold"the words on the top "Glia.Gaza"
translate([-.7,23,8])rotate([0,0,90])signeture();