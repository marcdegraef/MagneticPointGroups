// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar3pm.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar3pm
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
	object {  anti_axis_three() }
	object {  mirrorplane()  rotate x*90.0 }
	object {  mirrorplane()  rotate x*90.0 rotate y*60.0 }
	object {  mirrorplane()  rotate x*90.0 rotate y*-60.0 }
	object {  anti_axis_two()  rotate x*90.0 }
	object {  anti_axis_two()  rotate x*90.0 rotate y*60.0 }
	object {  anti_axis_two()  rotate x*90.0 rotate y*-60.0 }
        object {  anti_sympoint() }
}



#declare sy=2*py;
#declare msy=-sy;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * sy ,  pz,  0.866 * px - 0.5 * sy > }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 * sy ,  pz, -0.866 * px - 0.5 * sy > }
	object {  pmarrow()  rotate z*theta translate <mpx, mpz,  sy> }
	object {  pmarrow()  rotate z*theta rotate y*-120 translate < -0.5 *mpx - 0.866 * sy , mpz,  0.866 *mpx - 0.5 * sy > }
	object {  pmarrow()  rotate z*theta rotate y*-240 translate < -0.5 *mpx + 0.866 * sy , mpz, -0.866 *mpx - 0.5 * sy > }
	object {  mparrow() scale <1,-1,1> rotate z*theta translate < px,  pz, msy> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 *msy ,  pz,  0.866 * px - 0.5 *msy > }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 *msy ,  pz, -0.866 * px - 0.5 *msy > }
	object {  mmarrow()  scale <1,-1,1> rotate z*theta translate <mpx, mpz, msy> }
	object {  mmarrow()  scale <1,-1,1> rotate z*theta rotate y*-120 translate < -0.5 *mpx - 0.866 *msy , mpz,  0.866 *mpx - 0.5 *msy > }
	object {  mmarrow()  scale <1,-1,1> rotate z*theta rotate y*-240 translate < -0.5 *mpx + 0.866 *msy , mpz, -0.866 *mpx - 0.5 *msy > }
  }

object { orbit }
