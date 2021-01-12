// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_4p32p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_4p32p
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
#include "../../inc/mpg-view-axial-movie.inc"
#include "../../inc/mpg-macros-axial-color.inc"



#declare point_group=
union {
	object {  anti_axis_four() }
	object {  anti_axis_four()  rotate x*90.0}
	object {  anti_axis_four()  rotate z*90.0}

	object {  anti_axis_two()  rotate x*45.0}
	object {  anti_axis_two()  rotate x*-45.0}
	object {  anti_axis_two()  rotate y*90.0 rotate z*45.0}
	object {  anti_axis_two()  rotate y*90.0 rotate z*-45.0}
	object {  anti_axis_two()  rotate x*90.0 rotate y*45.0}
	object {  anti_axis_two()  rotate x*90.0 rotate y*-45.0}

	object {  axis_three() rotate y*-30.0 rotate x*54.7333 rotate y*45.0}
	object {  axis_three() rotate y*-30.0 rotate x*54.7333 rotate y*-45.0}
	object {  axis_three() rotate y*30.0 rotate x*-54.7333 rotate y*45.0}
	object {  axis_three() rotate y*30.0 rotate x*-54.7333 rotate y*-45.0}

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
	object {  mparrow() scale <1,-1,1> rotate z*theta translate < px,  pz,  sy>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  px>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  px,  pz>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*180.0 translate <mpx,  pz, msy>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy, mpx>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy, mpx,  pz>  rotate y*90.0 }
	object {  pparrow() rotate z*theta rotate z*180.0 translate <mpx, mpz,  sy> }
	object {  pparrow() rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz,  sy, mpx> }
	object {  pparrow() rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, mpx, mpz> }
	object {  pparrow() rotate z*theta rotate x*180.0 translate < px, mpz, msy> }
	object {  pparrow() rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz, msy,  px> }
	object {  pparrow() rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy,  px, mpz> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate z*180.0 translate <mpx, mpz,  sy>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz,  sy, mpx>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate z*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, mpx, mpz>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate x*180.0 translate < px, mpz, msy>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate <mpz, msy,  px>  rotate y*90.0 }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate x*180.0 Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate <msy,  px, mpz>  rotate y*90.0 }
  }

object { orbit }
