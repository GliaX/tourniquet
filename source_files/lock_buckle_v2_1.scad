/*lock buckle is the same as the lock buckle you will find in bags laces
this element could be used in the tourniquet to tighten the strap for the first time before the final tightening by the windlass
will allow you pull the strap but will not go back whwn you let it

*/
rad=2;//cylinders radiuses
strap_w=36;//width of the strap in mm
wall_t=3;//thickness of the side walls in mm
$fn=50;
length=20;//buckle length
angle=-45;//positioning the cylinders
rear=4;//rear end bar thickness

/////////////////////////////////////
///////////////////////////////////////

rotate([0,angle,0])translate([length/2+wall_t,0,-rad])rotate([-90,0,0])cylinder(r=rad,h=strap_w+2*wall_t);

translate([-4*rad,0,0])rotate([0,angle,0])translate([length/2+wall_t,0,-rad])rotate([-90,0,0])cylinder(r=rad,h=strap_w+2*wall_t);//spare insert


//first cylinder to roll the strap"active"
translate([length,0,2*rad])rotate([-90,0,0])cylinder(r=rad,h=strap_w+2*wall_t);//second cylinder it sew the other end of the strap

    translate([1.5*length,0,0])cube([rear,strap_w+2*wall_t,rear]);//rear end of the bckle to hold the static strap end
    module side_walls(){
difference(){//building the side walls
hull(){//objects hulled together to make the shape of the wall
    translate([-4*rad,0,0])rotate([0,angle,0])translate([length/2+wall_t,0,-rad])rotate([-90,0,0])cylinder(r=2*rad,h=wall_t);//spare insert

    
    
rotate([0,angle,0])translate([length/2+wall_t,0,-rad])rotate([-90,0,0])cylinder(r=2*rad,h=wall_t);

translate([length,0,2*rad])rotate([-90,0,0])cylinder(r=2*rad,h=wall_t);

translate([-1,0,0])cube(wall_t);
    translate([1.5*length,0,0])cube([rear,wall_t,rear]);
}
translate([length/1.5,0,-length/1.5+wall_t])rotate([-90,0,0])cylinder(r=length/1.5,h=wall_t+.1);
//the curcular cun in the bottom of the walls
}
}



side_walls();
translate([0,strap_w+2*wall_t,0])//building the other wall "same but mirrored
mirror([0,1,0])side_walls();

//bar
difference(){//the front end of the buckle with angled cut to go with the strap
translate([-1,0,0])cube([wall_t+1,strap_w+2*wall_t,wall_t]);
    rotate([0,angle,0])translate([0,0,-wall_t])cube([2*wall_t,strap_w+2*wall_t,wall_t]);
}
