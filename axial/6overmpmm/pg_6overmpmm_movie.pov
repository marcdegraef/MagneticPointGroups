// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_6overmpmm.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_6overmpmm
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
        object {  axis_six() }
        object {  anti_hexmirrorplane() }
        object {  mirrorplane()  rotate x*90.0 }
        object {  mirrorplane() rotate z*90.0 }
        object {  mirrorplane()  rotate x*90.0 rotate y*60.0 }
        object {  mirrorplane()  rotate x*90.0 rotate y*-60.0 }
        object {  mirrorplane()  rotate x*90.0 rotate y*30.0 }
        object {  mirrorplane()  rotate x*90.0 rotate y*-30.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*90.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*60.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*-60.0 }
        object {  anti_axis_two()  rotate x*90.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*30.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*-30.0 }
        object {  anti_sympoint() }
	object {  cartesian() }
}





object { point_group }

#declare orbit=
  union {
	  object {  pparrow() rotate z*theta translate < px,  pz,  py> }
 	  object {  pparrow() rotate z*theta rotate y*-60  translate <  0.5 * px - 0.866 * py ,  pz,  0.866 * px + 0.5 * py > } 
	  object {  pparrow() rotate z*theta rotate y*-120  translate < -0.5 * px - 0.866 * py ,  pz,  0.866 * px - 0.5 * py > }
	  object {  pparrow() rotate z*theta rotate y*-180  translate < mpx, pz,  mpy> }
	  object {  pparrow() rotate z*theta rotate y*-240  translate < -0.5 * px + 0.866 * py , pz, -0.866 * px - 0.5 *  py > }
	  object {  pparrow() rotate z*theta rotate y*-300  translate <  0.5 * px + 0.866 * py , pz, -0.866 * px + 0.5 *  py > }
        object {  pmarrow()  rotate z*-theta translate < px, mpz, mpy> }
        object {  pmarrow()  rotate z*-theta rotate y*-60 translate <  0.5 * px - 0.866 *mpy , mpz,  0.866 * px + 0.5 *mpy > }
        object {  pmarrow()  rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 *mpy , mpz,  0.866 * px - 0.5 *mpy > }
        object {  pmarrow()  rotate z*-theta rotate y*-180 translate <mpx, mpz,  py> }
        object {  pmarrow()  rotate z*-theta rotate y*-240 translate < -0.5 * px + 0.866 *mpy , mpz, -0.866 * px - 0.5 *mpy > }
        object {  pmarrow()  rotate z*-theta rotate y*-300 translate <  0.5 * px + 0.866 *mpy , mpz, -0.866 * px + 0.5 *mpy > }
        object {  mparrow()  scale <1,-1,1> rotate z*theta translate < px,  pz, mpy> }
        object {  mparrow()  scale <1,-1,1> rotate z*theta rotate y*-60 translate <  0.5 * px - 0.866 *mpy ,  pz,  0.866 * px + 0.5 *mpy > }
        object {  mparrow()  scale <1,-1,1> rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 *mpy ,  pz,  0.866 * px - 0.5 *mpy > }
        object {  mparrow()  scale <1,-1,1> rotate z*theta rotate y*-180 translate <mpx,  pz,  py> }
        object {  mparrow()  scale <1,-1,1> rotate z*theta rotate y*-240 translate < -0.5 * px + 0.866 *mpy ,  pz, -0.866 * px - 0.5 *mpy > }
        object {  mparrow()  scale <1,-1,1> rotate z*theta rotate y*-300 translate <  0.5 * px + 0.866 *mpy ,  pz, -0.866 * px + 0.5 *mpy > }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta translate < px, mpz,  py> }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta rotate y*-60 translate <  0.5 * px - 0.866 * py , mpz,  0.866 * px + 0.5 * py > }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 * py , mpz,  0.866 * px - 0.5 * py > }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta rotate y*-180 translate <mpx, mpz, mpy> }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta rotate y*-240 translate < -0.5 * px + 0.866 * py , mpz, -0.866 * px - 0.5 * py > }
        object {  mmarrow()   scale <1,-1,1> rotate z*-theta rotate y*-300 translate <  0.5 * px + 0.866 * py , mpz, -0.866 * px + 0.5 * py > }
  }

object { orbit }
