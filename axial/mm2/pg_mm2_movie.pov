// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mm2.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_mm2
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
	object {  axis_two() } 
	object {  mirrorplane()  rotate x* 90.0}
	object {  mirrorplane()  rotate z* 90.0}
	object {  cartesian() }
}



#declare sy=2.5*py;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pparrow() rotate z*theta  translate <px,  pz,  sy> rotate y*180}
	object {  mparrow() scale <1,-1,1> rotate z*-theta  translate <mpx,  pz,  sy> }
	object {  mparrow() scale <1,-1,1> rotate z*-theta  translate <mpx,  pz,  sy> rotate y*180}
  }

object { orbit }
