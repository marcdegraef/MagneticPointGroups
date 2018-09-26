// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar11p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar11p
// Date: 09/19/2018
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
	object {  sympoint() }
	object {  cartesian() }
	}





object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pparrow() scale <1,-1,1> rotate z*theta translate <mpx, mpz, mpy> }
  }

object { orbit }
