// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mbar3.pov
// Vers: 3.7
// Desc: pov file for polar rendering of point group pg_mbar3
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
#include "../../inc/mpg-view-polar-movie.inc"
#include "../../inc/mpg-macros-polar.inc"



#declare point_group=
union {
	object {  axis_two() } 
	object {  axis_two()   rotate x* 90.0}
	object {  axis_two()   rotate x* 90.0 rotate y*90.0}
        object {  sympoint() }


	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*45.0}
	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*-45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*-45.0}

	object {  mirrorplane() }	
	object {  mirrorplane()  rotate x*90.0}
	object {  mirrorplane()  rotate z*90.0}

	object {  cartesian() }
}



#declare sy=2*py;
#declare msy=-sy;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  px> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  px,  pz> }
	object {  pparrow() rotate z*theta rotate y*180.0 translate <mpx,  pz, msy> }
	object {  pparrow() rotate z*theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy, mpx> }
	object {  pparrow() rotate z*theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy, mpx,  pz> }
	object {  pparrow() rotate z*theta rotate z*180.0 translate <mpx, mpz,  sy> }
	object {  pparrow() rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz,  sy, mpx> }
	object {  pparrow() rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, mpx, mpz> }
	object {  pparrow() rotate z*theta rotate x*180.0 translate < px, mpz, msy> }
	object {  pparrow() rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz, msy,  px> }
	object {  pparrow() rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy,  px, mpz> }
	object {  mparrow() scale <1,-1,1> rotate z*theta translate <mpx, mpz, msy> }
	object {  mparrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy, mpx> }
	object {  mparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy,  px,  pz> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*180.0 translate < px, mpz,  sy> }
	object {  mparrow() rotate z*-theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  px> }
	object {  mparrow() rotate z*theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, mpx,  pz> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate z*180.0 translate < px,  pz, msy> }
	object {  mparrow() rotate z*-theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz,  sy,  px> }
	object {  mparrow() rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy, mpx, mpz> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate x*180.0 translate <mpx,  pz,  sy> }
	object {  mparrow() rotate z*-theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz, msy, mpx> }
	object {  mparrow() rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  px, mpz> }
  }

object { orbit }
