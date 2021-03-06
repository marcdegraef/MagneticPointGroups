// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mmpmp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_mmpmp
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
#include "../../inc/mpg-macros-axial-color.inc"



#declare point_group=
union {
	object {  anti_axis_two() } 
	object {  anti_mirrorplane() }
	object {  anti_axis_two()  rotate x*90.0}
	object {  anti_mirrorplane()  rotate x*90.0}
	object {  axis_two()  rotate x*90.0 rotate y*90}
	object {  mirrorplane()  rotate z*90.0}
        object {  sympoint() }
	object {  cartesian() }
	object {  cartesian()  rotate x*90.0}
	object {  cartesian()  rotate z*90.0}
}

#declare sy=2.5*py;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate y*180 translate <mpx,  pz, -sy> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta translate < px, mpz,  sy> }
	object {  mparrow() rotate z*theta translate <mpx, mpz, -sy> }

	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate z*180 translate <mpx, mpz,  sy> }
	object {  mmarrow() rotate z*theta translate < px,  pz, -sy> }
	object {  pparrow() rotate z*theta rotate x*180 translate < px, mpz, -sy> }
	object {  mparrow() scale <1,-1,1> rotate z*-theta translate <mpx,  pz,  sy> }
  }

object { orbit }
