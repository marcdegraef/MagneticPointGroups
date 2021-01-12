// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_2221p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_2221p
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
#include "../../inc/mpg-macros-axial-gray.inc"



#declare point_group=
union {
	object {  axis_two() } 
	object {  axis_two()   rotate x*90.0 }
	object {  axis_two()   rotate x*90.0  rotate y*90.0 }
	object {  cartesian() }
	object {  cartesian()  rotate x*90.0 }
	object {  cartesian()  rotate z*90.0 }
}





object { point_group }

#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pparrow() rotate z*theta rotate y*180 translate <mpx,  pz, mpy> }
	object {  pparrow() rotate z*theta rotate z*180 translate <mpx, mpz,  py> }
	object {  pparrow() rotate z*theta rotate x*180 translate < px, mpz, mpy> }
  }

object { orbit }
