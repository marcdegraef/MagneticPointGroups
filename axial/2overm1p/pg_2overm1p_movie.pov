// Copyright (c) 2008-2018, Marc De Graef Research Gro../../Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_2overm1p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_2overm1p
// Date: ../../19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-axial-movie.inc"
#include "../../inc/mpg-macros-axial-gray.inc"



#declare point_group=
union {
	object {  axis_two() } 
	object {  mirrorplane() }
        object {  sympoint() }
	object {  cartesian() }
}





object { point_group }

 
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px, pz,py> } 
	object {  pparrow() rotate z*-theta translate <mpx,pz,mpy> } 
	object {  pparrow() scale <1,-1,1> rotate z*theta translate <mpx,mpz,mpy> } 
	object {  pparrow() scale <1,-1,1> rotate z*-theta translate < px, mpz,py> } 
  }

object { orbit }
