// Set variables related to the creation of the rod and
// strap holder. All measurements are in mm

// Variables related to Rod
rod_r=7; //rod radius
rod_l=140; //rod length
rod_g=5; //rod groove radius
rod_res=8; //rod resolution

rod_groove_l=[7,7,7];//
rod_groove_p=[12,22,32];//
rod_groove_array=3;
rod_in_strap_space=2;//spacing between rod and the curve

// Variables related to strap holder
strap_holder_w=50; // strap holder width
strap_holder_t=1.5; //strap holder thickness
strap_holder_l=90; //strap holder length
holder_w=25; //curved holder width
strap_w=40; //velcro strap width
strap_t=3; //velcro strap groove thickness
curve_sup_t=2.5; //groove support thickness
curve_t=4; //curve thickness

groov_p_y=[6,15]; //y-position of strap grooves 

groov_array_length=2;//length of grooves y-position array 
curve_op=20;//curve upper opening window width 

// Useful calculations (Do not modify)
groov_p_x=(strap_holder_w-strap_w)/2;

curve_or=rod_r+rod_in_strap_space+curve_t; //curve outer radius
curve_ir=rod_r+rod_in_strap_space; //curve inner radius
window_y_p=(strap_holder_w-curve_op)/2;//y-position of window

