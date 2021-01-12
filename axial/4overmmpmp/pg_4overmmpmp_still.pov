// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_4overmmpmp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_4overmmpmp
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
	object {  anti_axis_two()  rotate x*90.0 }
	object {  anti_axis_two()  rotate x*90.0 rotate y*90.0 }
	object {  anti_axis_two()  rotate x*90.0 rotate y*-45.0 }
	object {  anti_axis_two()  rotate x*90.0 rotate y*45.0 }
	object {  mirrorplane() } 
	object {  anti_mirrorplane()  rotate x*90.0 }
	object {  anti_mirrorplane()  rotate z*90.0 }
	object {  anti_mirrorplane()  rotate z*90.0 rotate y*45.0 }
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*45.0 }
	object {  sympoint() }
	object {  cartesian() }
}



#declare sy=2.5*py;

#declare wedge=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pmarrow()  rotate z*-theta translate < px, mpz, -sy> }
	object {  mmarrow() rotate z*theta translate < px,  pz, -sy> }
	object {  mparrow()  rotate z*-theta translate < px, mpz,  sy> }
  } 
 
object { point_group }
#declare orbit=
  union {
	object {  wedge }
	object {  wedge rotate y*90 }
	object {  wedge rotate y*180 }
	object {  wedge rotate y*270 }
  }

object { orbit }
