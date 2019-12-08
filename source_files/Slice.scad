difference(){rotate([90,0,0])
    cube([40,2,38]);
    //main Body of Supporting Slice
rotate([0,0,0])translate([6,-6,0])cylinder(r=3,h=3);
//hole double cap rivet left
rotate([0,0,0])translate([34,-6,0])cylinder(r=3,h=3);
//hole double cap rivet right
}
//the part of slice that support the belt :
rotate([90,0,0])difference(){
translate([-3,0,38])cube([46,5.3,28]);//bridge block with upper side and down side
translate([0,2,38])cube([40,1.3,28]);//space under bridge
translate([0,2,38])cube([40,3.3,10]);//cutoff below the bridge
translate([0,2,56])cube([40,3.3,10]);//cutoff above the bridge
translate([1,0,45])cube([38,2,14]);//cutoff downd the bridge
}
//support for bridge{
translate([12,-56,0])cube([0.6,8,3.3]);
translate([28,-56,0])cube([0.6,8,3.3]);
//}
