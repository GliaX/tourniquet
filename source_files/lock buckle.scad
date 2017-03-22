/*
this is a buckle 
used to lock on the strap in certain direction
allow it to move in one direction for the tightining
** still work in progress and testing




*/
tri_h=7;
lock_h=10;
lock_l=45;
lock_w=48;
upper_tri_y=26.25;
space=3.7;
wall_t=5;
tri2_h=10;
difference(){
union(){
difference(){
cube([lock_l,lock_w,lock_h]);
    translate([wall_t,wall_t,0])cube([lock_l-2*wall_t,lock_w-2*wall_t,lock_h]);
}

translate([upper_tri_y,0,lock_h])
translate([0,0,-tri_h*sin(60)])
hull(){
rotate([0,30,0])cube([.1,lock_w,tri_h]);
rotate([0,-30,0])cube([.1,lock_w,tri_h]);}

translate([lock_l-wall_t,0,0.05])
rotate([0,180,0])
translate([0,0,-tri2_h*sin(60)])
hull(){
rotate([0,30,0])cube([.1,lock_w,tri2_h]);
rotate([0,-30,0])cube([.1,lock_w,tri2_h]);}

translate([12.5,0,5])rotate([-90,0,0])cylinder(r=3,h=lock_w);
}
for(i=[wall_t:space :lock_w-wall_t]){
translate([lock_l-2.1*wall_t,i,0])cube([4,1,1]);
}
}
