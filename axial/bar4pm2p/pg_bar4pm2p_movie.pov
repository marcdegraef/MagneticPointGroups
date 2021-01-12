// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar4p2mp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar4p2mp
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
	object {  axis_two() }
	object {  anti_axis_two()  rotate x*90.0 rotate y*45.0}
	object {  anti_axis_two()  rotate x*90.0 rotate y*-45.0}
	object {  mirrorplane()  rotate z*90.0 rotate y*90}
	object {  mirrorplane()  rotate x*90.0 rotate y*90}
	object {  cartesian() }
}



#declare sy=2.5*py;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  mparrow() scale <1,-1,1> rotate z*theta translate <px,  pz, -sy> }
	object {  pparrow() rotate z*theta rotate y*180 translate <mpx,pz,-sy> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*180 translate < mpx,  pz,  sy> }
	
	object {  pmarrow() scale <1,-1,1> rotate z*theta Axis_Rotate_Trans(<1, 0, 1>, 180.0) translate < sy, mpz, px> }
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 0, 1>, 180.0)  translate <-sy, mpz,  px> }
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 0, -1>, 180.0) translate < sy, mpz, mpx> }
	object {  pmarrow() scale <1,-1,1> rotate z*theta Axis_Rotate_Trans(<1, 0, -1>, 180.0) translate <-sy, mpz,  mpx> }
  }

object { orbit }
