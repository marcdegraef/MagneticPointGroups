// Copyright (c) 2008-2021, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_6pmmp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_6pmmp
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
	object {  anti_axis_six() }
	object {  mirrorplane()  rotate x*90.0 }
	object {  anti_mirrorplane()  rotate z*90.0 }
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*30.0 }
	object {  mirrorplane()  rotate x*90.0 rotate y*60.0 }
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*-30.0 }
	object {  mirrorplane()  rotate x*90.0 rotate y*-60.0 }
}





object { point_group }

 
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  py> }
	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate y*-60 translate <  0.5 * px - 0.866 * py ,  pz,  0.866 * px + 0.5 * py > }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * py ,  pz,  0.866 * px - 0.5 * py > }
	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate y*-180 translate <mpx,  pz, mpy> }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 * py ,  pz, -0.866 * px - 0.5 * py > }
	object {  pmarrow() scale <1,-1,1> rotate z*theta rotate y*-300 translate <  0.5 * px + 0.866 * py ,  pz, -0.866 * px + 0.5 * py > }
	object {  mparrow()  scale <1,-1,1> rotate z*theta translate < px,  pz, mpy> }
	object {  mmarrow() rotate z*theta rotate y*-60 translate <  0.5 * px - 0.866 *mpy ,  pz,  0.866 * px + 0.5 *mpy > }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 *mpy ,  pz,  0.866 * px - 0.5 *mpy > }
	object {  mmarrow() rotate z*theta rotate y*-180 translate <mpx,  pz,  py> }
	object {  mparrow() scale <1,-1,1> rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 *mpy ,  pz, -0.866 * px - 0.5 *mpy > }
	object {  mmarrow() rotate z*theta rotate y*-300 translate <  0.5 * px + 0.866 *mpy ,  pz, -0.866 * px + 0.5 *mpy > }
  }

object { orbit }
