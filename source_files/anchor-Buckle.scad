//buckle
$fn=100;
rad=28;
tooth_t=1.3;
tooth_w=4.5;
module tooth(){
hull(){
    translate([-.1,0,0])cube([.1,tooth_w,3]);
    translate([-tooth_t,0,3])cube([tooth_t,tooth_w,.1]);
}
}

module itooth(){
hull(){
    translate([-.1,-tooth_w,0])cube([.1,tooth_w,3]);
    translate([-tooth_t,-tooth_w,3])cube([tooth_t,tooth_w,.1]);
}
}

difference(){
union(){
intersection(){
translate([-15,0,3.5])cube([30,49,8-3.5]);
translate([0,0,-rad+8])rotate([-90,0,0])cylinder(r=rad,h=49);
}
translate([-4,0,0])cube([8,49,7.6+1.5]);
translate([-15,0,0])cube([30,49,3.5]);


}//the body


translate([2,5.5,0])rotate([-90,0,0])cylinder(r=4,h=38);//the cylindrical cut inside

hull(){//the cut though upword for working side
    translate([5.5,7.5,0])cylinder(r=3,h=10);
    translate([5.5,49-7.5,0])cylinder(r=3,h=10);
}




hull(){//the ramp cut 
    translate([15,5.5,0])cube([.1,38,.5]);
    translate([8,5.5,0])cube([.1,38,3]);

}


hull(){//the cut though upword for fixed side
    translate([-7,7.5,0])cylinder(r=3,h=10);
    translate([-7,49-7.5,0])cylinder(r=3,h=10);
}
}

//tooth
translate([8.6,27,3.5])tooth();

translate([8.6,27+1.5+4.5,3.5])tooth();

translate([8.6,23,3.5])itooth();
translate([8.6,23-1.5-4.5,3.5])itooth();


            
module signeture(){
linear_extrude(height=2, convexity=4)
                text("Glia   .Gaza", 
                     size=5,
                     font="Bitstream Vera Sans:style=Bold",
                     halign="center",
                     valign="center");
    
}
//"Agency FB:style=Bold"
translate([-.7,23,8])rotate([0,0,90])signeture();