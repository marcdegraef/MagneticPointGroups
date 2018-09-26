// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar42pmp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar42pmp
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-axial.inc"
#include "../../inc/mpg-macros-axial-color.inc"



#declare point_group=
union {
	object {  axis_four() }
	object {  axis_two() }
	object {  anti_axis_two()  rotate x*90.0}
	object {  anti_axis_two()  rotate x*90.0 rotate y*90.0}
	object {  anti_mirrorplane()  rotate z*90.0 rotate y*45.0}
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*45.0}
	object {  cartesian() }
}



#declare sy=2.5*py;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  mparrow() rotate z*-theta rotate y*-270 translate < sy, mpz, mpx> }
	object {  pparrow() rotate z*theta rotate y*180 translate <mpx,  pz, -sy> }
	object {  mparrow() rotate z*-theta rotate y*-90 translate <-sy, mpz,  px> }

	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate x*180 translate < px, mpz, -sy> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta rotate x*180 rotate y*-270 translate <-sy,  pz, mpx> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta rotate x*180 rotate y*-90 translate < sy,  pz,  px> }
	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate x*180 rotate y*180 translate <mpx, mpz,  sy>}
  }

object { orbit }
