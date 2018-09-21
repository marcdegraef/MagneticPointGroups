// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mbar3.pov
// Vers: 3.7
// Desc: pov file for raw rendering of point group pg_mbar3
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
	object { ball( px, py, pz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( pz, px, py, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( py, pz, px, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpx,mpy, pz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( pz,mpx,mpy, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpy, pz,mpx, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpx, py,mpz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpz,mpx, py, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( py,mpz,mpx, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( px,mpy,mpz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpz, px,mpy, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpy,mpz, px, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( px, py,mpz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( pz, px,mpy, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( py, pz,mpx, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpx,mpy,mpz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( pz,mpx, py, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpy, pz, px, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpx, py, pz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpz,mpx,mpy, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( py,mpz, px, 0.075, <0.0, 0.0, 1.0>) }
	object { ball( px,mpy, pz, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpz, px, py, 0.075, <0.0, 0.0, 1.0>) }
	object { ball(mpy,mpz,mpx, 0.075, <0.0, 0.0, 1.0>) }
	object {  axis_two() } 
	object {  axis_two()   rotate x* 90.0}
	object {  axis_two()   rotate x* 90.0 rotate y*90.0}
        object {  sympoint() }


	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*45.0}
	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*-45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*-45.0}

	object {  mirrorplane() }	
	object {  mirrorplane()  rotate x*90.0}
	object {  mirrorplane()  rotate z*90.0}

	object {  cartesian() }
}





object { point_group }
