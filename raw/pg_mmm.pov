// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mmm.pov
// Vers: 3.7
// Desc: pov file for raw r}ering of point group pg_mmm
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../inc/mpg-view.inc"
#include "../inc/mpg-macros.inc"



#declare point_group=
union {
	object {  axis_two() } 
	object {  mirrorplane() }
	object {  axis_two()  rotate x*90.0}
	object {  mirrorplane()  rotate x*90.0}
	object {  axis_two()  rotate x*90.0 rotate y*90}
	object {  mirrorplane()  rotate z*90.0}
        object {  sympoint() }
	object {  cartesian() }
	object {  cartesian()  rotate x*90.0}
	object {  cartesian()  rotate z*90.0}
}




object { point_group }
