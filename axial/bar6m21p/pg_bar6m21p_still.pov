// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar6m21p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar6m21p
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "../../inc/mpg-view-axial.inc"
#include "../../inc/mpg-macros-axial-gray.inc"



#declare point_group=
union {
        object {  axis_six() }
        object {  hexmirrorplane() }
        object {  mirrorplane()  rotate x*90.0 rotate y*30.0}
        object {  mirrorplane()  rotate x*90.0 rotate y*90.0}
        object {  mirrorplane()  rotate x*90.0 rotate y*-30.0}
        object {  axis_two()  rotate x*90.0 rotate y*60.0}
        object {  axis_two()  rotate x*90.0 }
        object {  axis_two()  rotate x*90.0 rotate y*-60.0}
}


#declare sy=2*py;
#declare msy=-sy;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * sy ,  pz,  0.866 * px - 0.5 * sy > }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px - 0.866 * msy ,  pz, -0.866 * px + 0.5 * msy > }
	object {  pparrow() scale <1,-1,1> rotate z*-theta translate < px, mpz,  msy> }
	object {  pparrow() scale <1,-1,1> rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 * msy , mpz,  0.866 * px - 0.5 * msy > }
	object {  pparrow() scale <1,-1,1> rotate z*-theta rotate y*-240 translate < -0.5 * px - 0.866 * sy , mpz, -0.866 * px + 0.5 * sy > }
	object {  pparrow() rotate z*theta translate < px,  pz,  msy> }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * msy ,  pz,  0.866 * px - 0.5 * msy > }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px - 0.866 * sy ,  pz, -0.866 * px + 0.5 * sy > }
	object {  pparrow() scale <1,-1,1> rotate z*-theta translate < px, mpz,  sy> }
	object {  pparrow() scale <1,-1,1> rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 * sy , mpz,  0.866 * px - 0.5 * sy > }
	object {  pparrow() scale <1,-1,1> rotate z*-theta rotate y*-240 translate < -0.5 * px - 0.866 * msy , mpz, -0.866 * px + 0.5 * msy > }
  }

object { orbit rotate y*30}
