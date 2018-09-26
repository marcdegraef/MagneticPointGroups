// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar6pm2p.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar6pm2p
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
        object {  anti_hexmirrorplane() }
        object {  mirrorplane()  rotate x*90.0 rotate y*30.0}
        object {  mirrorplane()  rotate x*90.0 rotate y*90.0}
        object {  mirrorplane()  rotate x*90.0 rotate y*-30.0}
        object {  anti_axis_two()  rotate x*90.0 rotate y*60.0}
        object {  anti_axis_two()  rotate x*90.0 }
        object {  anti_axis_two()  rotate x*90.0 rotate y*-60.0}
}


#declare sy=2*py;
#declare msy=-sy;

object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < px,  pz,  sy> }
	object {  pparrow() rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * sy ,  pz,  0.866 * px - 0.5 * sy > }
	object {  pparrow() rotate z*theta rotate y*-240 translate < -0.5 * px - 0.866 * msy ,  pz, -0.866 * px + 0.5 * msy > }

	object {  mparrow() scale <1,-1,1>rotate z*theta translate < px,  pz,  msy> }
	object {  mparrow() scale <1,-1,1>rotate z*theta rotate y*-120 translate < -0.5 * px - 0.866 * msy ,  pz,  0.866 * px - 0.5 * msy > }
	object {  mparrow() scale <1,-1,1>rotate z*theta rotate y*-240 translate < -0.5 * px - 0.866 * sy ,  pz, -0.866 * px + 0.5 * sy > }

	object {  mmarrow() scale <1,-1,1> rotate z*-theta translate < px, mpz,  sy> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 * sy , mpz,  0.866 * px - 0.5 * sy > }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta rotate y*-240 translate < -0.5 * px - 0.866 * msy , mpz, -0.866 * px + 0.5 * msy > }

	object {  pmarrow() rotate z*-theta translate < px, mpz,  msy> }
	object {  pmarrow() rotate z*-theta rotate y*-120 translate < -0.5 * px - 0.866 * msy , mpz,  0.866 * px - 0.5 * msy > }
	object {  pmarrow() rotate z*-theta rotate y*-240 translate < -0.5 * px - 0.866 * sy , mpz, -0.866 * px + 0.5 * sy > }
  }

object { orbit rotate y*30}
