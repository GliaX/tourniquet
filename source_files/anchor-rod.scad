module extend(){
translate([45,0,0])rotate([0,90,0])cylinder(r=4.8,h=30);
translate([45,0,0])rotate([0,90,0])cylinder(r=6.15,h=3);
translate([45+7,0,0])rotate([0,90,0])cylinder(r=6.15,h=3);
translate([45+14,0,0])rotate([0,90,0])cylinder(r=6.15,h=3);
translate([45+23,0,0])rotate([0,90,0])cylinder(r=6.15,h=3);
translate([45+28,0,0])rotate([0,90,0])cylinder(r=6.15,h=3);
}
   
difference(){
 
     scale([11,1,1])sphere(6.5);
rotate([0,90,0])translate([-7.3,0,-13.5])cylinder(r=2,h=27,$fn=50);
rotate([0,90,0])translate([7.3,0,-13.5])cylinder(r=2,h=27,$fn=50); 
hull(){
      
 translate([12.5,0,-7.5])cylinder(r=1.2,h=15,$fn=30);    
translate([-12.5,0,-7.5])cylinder(r=1.2,h=15,$fn=30);


}
}
extend();
rotate([0,180,0])extend();


