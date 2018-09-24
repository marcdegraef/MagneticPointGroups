// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_622.pov
// Vers: 3.7
// Desc: pov file for polar rendering of point group pg_622
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
	object {  axis_six() }
	object {  axis_two()  rotate x*90.0 }
	object {  axis_two()  rotate y*90.0 rotate z*90.0 }
	object {  axis_two()  rotate x*90.0 rotate y*30.0 }
	object {  axis_two()  rotate x*90.0 rotate y*60.0 }
	object {  axis_two()  rotate x*90.0 rotate y*-30.0 }
	object {  axis_two()  rotate x*90.0 rotate y*-60.0 }
	object {  cartesian() }
}





object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pparrow() rotate z*theta rotate y*-60 translate <  0.5 * px - 0.866 * py ,  pz,  0.866 * px + 0.5 * py > }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * py ,  pz,  0.866 * px - 0.5 * py > }
	object {  pparrow() rotate z*theta rotate y*-180 translate <mpx,  pz, mpy> }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 * py ,  pz, -0.866 * px - 0.5 * py > }
	object {  pparrow() rotate z*theta rotate y*-300 translate <  0.5 * px + 0.866 * py ,  pz, -0.866 * px + 0.5 * py > }
	object {  pparrow() scale <1,-1,1> rotate z*theta translate <mpx, mpz,  py> }
	object {  pparrow() scale <1,-1,1> rotate z*theta rotate y*-60 translate < -0.5 * px - 0.866 * py , mpz, -0.866 * px + 0.5 * py > }
	object {  pparrow() scale <1,-1,1> rotate z*theta rotate y*-120 translate <  0.5 * px - 0.866 * py , mpz, -0.866 * px - 0.5 * py > }
	object {  pparrow() scale <1,-1,1> rotate z*theta rotate y*-180 translate < px, mpz, mpy> }
	object {  pparrow() scale <1,-1,1> rotate z*theta rotate y*-240 translate <  0.5 * px + 0.866 * py , mpz,  0.866 * px - 0.5 * py > }
	object {  pparrow() scale <1,-1,1> rotate z*theta rotate y*-300 translate < -0.5 * px + 0.866 * py , mpz,  0.866 * px + 0.5 * py > }
  }

object { orbit }
