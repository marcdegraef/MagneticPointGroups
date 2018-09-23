// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: mpg-macros.inc
// Vers: 3.7
// Desc: various macros used in all pov files
// Date: 09/19/2018
// Auth: Marc De Graef

// KEEP IN MIND THAT ALL MACROS MUST IMPLEMENT A RIGHT-HANDED CARTESIAN REFERENCE FRAME
// THIS MEANS THAT THE ORDER OF COORDINATES IN ALL MACROS MUST BE X, Z, Y, SO THAT THE CALLING
// SCRIPTS CAN USE X, Y, Z IN THE NORMAL ORDERING !!!

//=====================================================
// definition of a reference frame axis
// parameters:
#macro refaxis()
	#local AxisSemiLength=1.4;
	#local AxisRadius=0.01;
	cylinder {<0.0, -AxisSemiLength, 0.0>, <0.0, AxisSemiLength,  0.0>, AxisRadius texture{pigment{color Blue} finish{ reflection 0.25 phong 0.75 }} }
#end //macro refaxis

//=====================================================
// definition of a reference frame
#macro cartesian()
	union {
		object {  refaxis() }
		object {  refaxis() rotate x*90.0 }
		object {  refaxis() rotate z*90.0 }
	}
#end //macro cartesian

//=====================================================
// definition of the inversion center sphere
// no parameters
#macro sympoint()
	#local SphereRadius=0.075;
	sphere { <0.0, 0.0, 0.0>, SphereRadius texture{pigment{color Yellow} finish{ reflection 0.25 phong 0.75 }}  }
#end //macro sympoint

//=====================================================
// definition of an arbitrary sphere
// parameters
// x, y, z  position
// r  radius
// RGB rgb vector 
#macro ball(px, py, pz, r, RGB)
	sphere { <px, pz, py>, r texture{ pigment{rgb RGB} finish{ reflection 0.25 phong 0.75 } } }
#end // macro ball

//=====================================================
// definition of a mirror plane
#macro mirrorplane()
	#local MirrorThickness=0.005;
	box { <-1.0, -MirrorThickness, -1.0>, <1.0, MirrorThickness, 1.0> pigment { color Gray  filter 0.75 } }
#end // macro mirror_plane

//=====================================================
// definition of a six-foldmirror plane
#macro hexmirrorplane()
	#local DiscHeight=0.005;
	#local s=sqrt(3.0)/2.0;
	prism { linear_sweep linear_spline -DiscHeight, DiscHeight, 6, <1.0, 0.0>, <0.5,s>, <-0.5,s>, <-1.0, 0.0>, <-0.5, -s>, <0.5, -s> texture{pigment{color Gray filter 0.75}}}
#end //macro hexmirrorplane

//=====================================================
// definition of a two-fold rotation axis disc
#macro disc_two()
	#local CylinderSemiLength=0.005;
	#local CylinderRadius=1.0;
	cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Yellow} finish{ reflection 0.25  phong 0.75}} }
#end //macro disc_two

//=====================================================
// definition of a three-fold rotation axis disc
#macro disc_three()
	#local DiscHeight=0.005;
	#local s=sqrt(3.0)/2.0;
	prism { linear_sweep linear_spline -DiscHeight, DiscHeight, 3, <1.0, 0.0>, <-0.5, s>, <-0.5, -s> texture{pigment{color Green} finish{ reflection 0.25  phong 0.75}}}
#end //macro disc_three

//=====================================================
// definition of a four-fold rotation axis disc
#macro disc_four()
	#local DiscHeight=0.005;
	prism { linear_sweep linear_spline -DiscHeight, DiscHeight, 4, <-1.0, -1.0>, <-1.0, 1.0>, <1.0, 1.0>, <1.0, -1.0> texture{pigment{color Red} finish{ reflection 0.25  phong 0.75}}}
#end //macro disc_four

//=====================================================
// definition of a five-fold rotation axis disc
#macro disc_five()
	#local DiscHeight=0.005;
	#local co=0.3090167;
	#local si=0.9510565;
	#local coco=-0.809017;
	#local sisi=0.5877852;
	prism { linear_sweep linear_spline -DiscHeight, DiscHeight, 5, <1.0, 0.0>, <co, -si>, <coco, -sisi>, <coco, sisi>, <co, si> texture{pigment{color Blue} finish{ reflection 0.25  phong 0.75}}}
#end //macro disc_five

//=====================================================
// definition of a six-fold rotation axis disc
#macro disc_six()
	#local DiscHeight=0.005;
	#local s=sqrt(3.0)/2.0;
	prism { linear_sweep linear_spline -DiscHeight, DiscHeight, 6, <1.0, 0.0>, <0.5,s>, <-0.5,s>, <-1.0, 0.0>, <-0.5, -s>, <0.5, -s> texture{pigment{color Blue} finish{ reflection 0.25  phong 0.75}}}
#end //macro disc_six

//=====================================================
// definition of a two-fold rotation axis
// no parameters
#macro axis_two()
	#local CylinderSemiLength=1.2;
	#local CylinderRadius=0.02;
	#local DiscHeight=1.214;
	union {
		cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Gray} finish{ reflection 1 }} }
		object { disc_two() scale <0.15, 1.0, 0.07> translate <0.0, DiscHeight, 0.0> }
		object { disc_two() scale <0.15, 1.0, 0.07> translate <0.0, -DiscHeight, 0.0> }
	}
#end //macro axis_two

//=====================================================
// definition of a three-fold rotation axis
// no parameters
#macro axis_three()
	#local CylinderSemiLength=1.2;
	#local CylinderRadius=0.02;
	#local DiscHeight=1.213;
	union {
		cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Gray} finish{ reflection 1 }} }
		object { disc_three() scale <0.15, 1.0, 0.15> translate <0.0, DiscHeight, 0.0> }
		object { disc_three() scale <0.15, 1.0, 0.15> translate <0.0, -DiscHeight, 0.0> }
	}
#end //macro axis_three

//=====================================================
// definition of a four-fold rotation axis
// no parameters
#macro axis_four()
	#local CylinderSemiLength=1.2;
	#local CylinderRadius=0.02;
	#local DiscHeight=1.212;
	union {
		cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Gray} finish{ reflection 1 }} }
		object { disc_four() scale <0.15, 1.0, 0.15> translate <0.0, DiscHeight, 0.0> }
		object { disc_four() scale <0.15, 1.0, 0.15> translate <0.0, -DiscHeight, 0.0> }
	}
#end //macro axis_four

//=====================================================
// definition of a five-fold rotation axis
// no parameters
#macro axis_five()
	#local CylinderSemiLength=1.2;
	#local CylinderRadius=0.02;
	#local DiscHeight=1.211;
	union {
		cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Gray} finish{ reflection 1 }} }
		object { disc_five() scale <0.15, 1.0, 0.15> translate <0.0, DiscHeight, 0.0> }
		object { disc_five() scale <0.15, 1.0, 0.15> translate <0.0, -DiscHeight, 0.0> }
	}
#end //macro axis_five

//=====================================================
// definition of a six-fold rotation axis
// no parameters
#macro axis_six()
	#local CylinderSemiLength=1.20;
	#local CylinderRadius=0.02;
	#local DiscHeight=1.21;
	union {
		cylinder { < 0.0, -CylinderSemiLength, 0.0>, <0.0, CylinderSemiLength, 0.0>, CylinderRadius texture{pigment{color Gray} finish{ reflection 1 }} }
		object { disc_six() scale <0.25, 1.0, 0.25> translate <0.0, DiscHeight, 0.0> }
		object { disc_six() scale <0.25, 1.0, 0.25> translate <0.0, -DiscHeight, 0.0> }
	}
#end //macro axis_six


//=====================================================
//=====================================================
// here we start the definitions of objects that are used for the representations of 
// polar point groups, i.e., regular point groups operating on a polar vector...

//=====================================================
//=====================================================
// definition of a general vector with a selectable color
#macro general_arrow(clr)
	#local CylinderLength=0.30;
	#local CylinderRadius=0.04;
	#local ConeBase=0.25;
	#local ConeTop=0.4;
	#local ConeBaseRadius=0.07;
	#local ConeTopRadius=0.0;
	union {
		cylinder { < 0.0, 0.0, 0.0>, <0.0, CylinderLength, 0.0>, CylinderRadius texture{pigment{color clr} finish{ reflection 1 phong 0.75 }} }
		cone { <0.0, ConeBase, 0.0>, ConeBaseRadius, <0.0,ConeTop,0.0>,ConeTopRadius texture{pigment{color clr} finish{ reflection 1 phong 0.75 }} }
	}
#end // macro general_arrow

// definition of a regular vector with positive spatial and time parities
#macro pparrow()
	object { general_arrow(White) translate <0.0, -0.15, 0.0> }
#end // macro pparrow

// definition of a regular vector with positive spatial and time parities
#macro mparrow()
	object { general_arrow(Magenta) translate <0.0, -0.15, 0.0> }
#end // macro pparrow

