// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_3m.pov
// Vers: 3.7
// Desc: pov file for raw rendering of point group pg_3m
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../inc/mpg-view-movie.inc"
#include "../inc/mpg-macros.inc"



#declare point_group=
union {
	object {  axis_three() }
	object {  mirrorplane() rotate x*90.0 rotate y*60.0 }
	object {  mirrorplane() rotate x*90.0 rotate y*120.0 }
	object {  mirrorplane() rotate x*90.0 }
}





object { point_group }

 
 
#include "3m.pos"
object { orbit rotate y*30 }
