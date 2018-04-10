holder_h=20;        //anchor holder hight
holder_w=60;        //anchor holder
holder_t=25;        //anchor holder wthikness
holder_wall_t=3;    //anchor holder wall thickness
holder_support_t=1;
top_window_w=20;


strap_w=40;          //wide strap width
    //anchor holder width = wide strap width+20
strap_t_cut=7;      //cut width for the strap
//Calcs
h_displace=(holder_t-(2*strap_t_cut))/3;

difference(){//shaping the holder
hull(){//outer body of the holder
cylinder(r=holder_h/2,h=holder_t);
translate([holder_w-holder_h,0,0])cylinder(r=holder_h/2,h=holder_t);
}
//internal cut
translate([0,0,holder_support_t])hull(){
cylinder(r=holder_h/2-holder_wall_t,h=holder_t);
translate([holder_w-holder_h,0,0])cylinder(r=holder_h/2-holder_wall_t,h=holder_t);
}

//rear opening
translate([0,holder_wall_t-holder_h/2,0])cube([holder_w-holder_h,holder_h-(2*holder_wall_t),holder_support_t]);

//top window
translate([(holder_w-holder_h-top_window_w)/2,0,0])cube([top_window_w,holder_h,holder_t]);

//strap_cuts
translate([0,-holder_h/2,h_displace])cube([strap_w,holder_wall_t+.2,strap_t_cut]);

translate([0,-holder_h/2,strap_t_cut+h_displace*2])cube([strap_w,holder_wall_t+.2,strap_t_cut]);

}



