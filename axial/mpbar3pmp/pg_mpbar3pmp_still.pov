// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mpbar3pmp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_mpbar3pmp
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "transforms.inc"
#include "../../inc/mpg-view-axial.inc"
#include "../../inc/mpg-macros-axial-color.inc"



#declare point_group=
union {
	object {  axis_four() }
	object {  axis_four()  rotate x* 90.0}
	object {  axis_four()  rotate z* 90.0}
        object {  sympoint() }


        object {  axis_two()  rotate x*45.0}
        object {  axis_two()  rotate x*-45.0}
        object {  axis_two()  rotate y*90.0 rotate z*45.0}
        object {  axis_two()  rotate y*90.0 rotate z*-45.0}
        object {  axis_two()  rotate x*90.0 rotate y*45}
        object {  axis_two()  rotate x*90.0 rotate y*-45}

	object {  anti_axis_three()  rotate y*-30 rotate x*54.7333 rotate y*45.0}
	object {  anti_axis_three()  rotate y*-30 rotate x*54.7333 rotate y*-45.0}
	object {  anti_axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*45.0}
	object {  anti_axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*-45.0}

	object {  anti_mirrorplane() }
	object {  anti_mirrorplane()  rotate x*90.0 }
	object {  anti_mirrorplane()  rotate z*90.0 }
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*45.0}
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*-45.0}
	object {  anti_mirrorplane()  rotate x*45.0 }
	object {  anti_mirrorplane()  rotate x*-45.0 }
	object {  anti_mirrorplane()  rotate z*45.0 }
	object {  anti_mirrorplane()  rotate z*-45.0 }

	object {  cartesian() }
}


#declare sx=1.2*px;
#declare msx=-sx;

#declare sy=1.2*py;
#declare msy=-sy;

#declare wedge=
  union {
  	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> }
	object {  mmarrow() rotate x*-theta translate < sy,  pz,  sx> }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> }
	
	object {  pparrow() scale <1,-1,1> rotate x*theta translate < sy, mpz,  sx> }
	object {  pparrow() rotate x*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msx,  sy> }
	object {  pparrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx, msy,  pz> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta translate < sx, mpz,  sy> }
	object {  mmarrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, msx,  pz> }
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  sx> }


  }

object { point_group }
#declare orbit=
  union {
  	object { wedge }
  	object { wedge rotate y*180 }
  	object { wedge rotate x*180 }
  	object { wedge rotate z*180 }
  }

object { orbit }
