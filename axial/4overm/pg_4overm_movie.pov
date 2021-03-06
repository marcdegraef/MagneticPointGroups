// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_4overm.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_4overm
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
#include "../../inc/mpg-macros-axial-regular.inc"



#declare point_group=
union {
	object {  axis_four() }
	object {  mirrorplane() }
        object {  sympoint() }
	object {  cartesian() }
}





object { point_group }

 
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px, pz,py> } 
	object {  pparrow() rotate z*theta translate < px, pz,py> rotate y*90} 
	object {  pparrow() rotate z*theta translate < px, pz,py> rotate y*180} 
	object {  pparrow() rotate z*theta translate < px, pz,py> rotate y*270} 

	object {  mparrow()  rotate z*-theta translate < px, mpz,py> } 
	object {  mparrow()  rotate z*-theta translate < px, mpz,py> rotate y*90} 
	object {  mparrow()  rotate z*-theta translate < px, mpz,py> rotate y*180} 
	object {  mparrow()  rotate z*-theta translate < px, mpz,py> rotate y*270} 
  }

object { orbit }
