// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_3m.pov
// Vers: 3.7
// Desc: pov file for polar rendering of point group pg_3m
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-polar.inc"
#include "../../inc/mpg-macros-polar.inc"



#declare point_group=
union {
	object {  axis_three() }
	object {  mirrorplane() rotate x*90.0 rotate y*60.0 }
	object {  mirrorplane() rotate x*90.0 rotate y*120.0 }
	object {  mirrorplane() rotate x*90.0 }
}





object { point_group }

#declare sy=2*py;
#declare msy=-sy;
 
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px, pz,sy> } 
	object {  mparrow() rotate z*theta translate < px,pz,msy> } 

	object {  pparrow() rotate z*theta translate < px, pz,sy> rotate y*120} 
	object {  mparrow() rotate z*theta translate < px,pz,msy>  rotate y*120} 

	object {  pparrow() rotate z*theta translate < px, pz,sy>  rotate y*240} 
	object {  mparrow() rotate z*theta translate < px,pz,msy>  rotate y*240} 
	
  }

object { orbit }
