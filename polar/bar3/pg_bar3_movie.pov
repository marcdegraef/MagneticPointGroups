// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar3.pov
// Vers: 3.7
// Desc: pov file for polar rendering of point group pg_bar3
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-polar-movie.inc"
#include "../../inc/mpg-macros-polar.inc"



#declare point_group=
union {
	object {  axis_three() }
        object {  sympoint() }
	object {  cartesian() }
}





object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * py ,  pz,  0.866 * px - 0.5 * py > }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 * py ,  pz, -0.866 * px - 0.5 * py > }
	object {  mparrow() scale <1,-1,1> rotate z*theta translate <mpx, mpz, mpy> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-120 translate < -0.5 *mpx - 0.866 *mpy , mpz,  0.866 *mpx - 0.5 *mpy > }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-240 translate < -0.5 *mpx + 0.866 *mpy , mpz, -0.866 *mpx - 0.5 *mpy > }
  }

object { orbit }
