// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar4.pov
// Vers: 3.7
// Desc: pov file for polar rendering of point group pg_bar4
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-polar-movie.inc"
#include "../../inc/mpg-macros-polar.inc"



#declare point_group=
union {
	object {  axis_four() }
	object {  axis_two() }
	object {  cartesian() }
}





object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pparrow() rotate z*theta rotate y*180 translate <mpx,  pz, mpy> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*90 translate <mpy, mpz,  px> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*270 translate < py, mpz, mpx> }
  }

object { orbit }
