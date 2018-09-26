// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_mpbar3pm.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_mpbar3pm
// Date: 09/19/2018
// Auth: Marc De Graef
#version 3.7;
global_settings {
	assumed_gamma 1.0
	max_trace_level 10
}

#include "colors.inc"
#include "metals.inc"
#include "transforms.inc"
#include "../../inc/mpg-view-axial-movie.inc"
#include "../../inc/mpg-macros-axial-color.inc"



#declare point_group=
union {
	object {  anti_axis_four() }
	object {  anti_axis_four()  rotate x* 90.0}
	object {  anti_axis_four()  rotate z* 90.0}
        object {  anti_sympoint() }


        object {  anti_axis_two()  rotate x*45.0}
        object {  anti_axis_two()  rotate x*-45.0}
        object {  anti_axis_two()  rotate y*90.0 rotate z*45.0}
        object {  anti_axis_two()  rotate y*90.0 rotate z*-45.0}
        object {  anti_axis_two()  rotate x*90.0 rotate y*45}
        object {  anti_axis_two()  rotate x*90.0 rotate y*-45}

	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*45.0}
	object {  axis_three()  rotate y*-30 rotate x*54.7333 rotate y*-45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*45.0}
	object {  axis_three()  rotate y* 30 rotate x*-54.7333 rotate y*-45.0}

	object {  anti_mirrorplane() }
	object {  anti_mirrorplane()  rotate x*90.0 }
	object {  anti_mirrorplane()  rotate z*90.0 }
	object {  mirrorplane()  rotate x*90.0 rotate y*45.0}
	object {  mirrorplane()  rotate x*90.0 rotate y*-45.0}
	object {  mirrorplane()  rotate x*45.0 }
	object {  mirrorplane()  rotate x*-45.0 }
	object {  mirrorplane()  rotate z*45.0 }
	object {  mirrorplane()  rotate z*-45.0 }

	object {  cartesian() }
}


#declare sx=1.2*px;
#declare msx=-sx;

#declare sy=1.2*py;
#declare msy=-sy;


object { point_group }
#declare orbit=
  union {
	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> }
	object {  mparrow() scale <1,-1,1> rotate x*-theta translate < sy,  pz,  sx> }
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> }
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> }

	object {  pmarrow() rotate x*theta translate < sy, mpz,  sx> }
	object {  pmarrow() scale <1,-1,1> rotate x*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msx,  sy> }
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx, msy,  pz> }
	object {  mmarrow() scale <1,-1,1> rotate z*-theta translate < sx, mpz,  sy> }
	object {  mmarrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, msx,  pz> }
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  sx> }

	object {  mmarrow() rotate z*theta translate < sx,  pz,  sy> rotate y*90}
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate y*90}
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate y*90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta translate < sy,  pz,  sx> rotate y*90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate y*90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate y*90}

	object {  mparrow() rotate x*theta translate < sy, mpz,  sx> rotate y*90}
	object {  mparrow() scale <1,-1,1> rotate x*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msx,  sy> rotate y*90}
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx, msy,  pz> rotate y*90}
	object {  pparrow() scale <1,-1,1> rotate z*-theta translate < sx, mpz,  sy> rotate y*90}
	object {  pparrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, msx,  pz> rotate y*90}
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  sx> rotate y*90}


	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> rotate y*180}
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate y*180}
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate y*180}
	object {  mparrow() scale <1,-1,1> rotate x*-theta translate < sy,  pz,  sx> rotate y*180}
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate y*180}
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate y*180}

	object {  pmarrow() rotate x*theta translate < sy, mpz,  sx> rotate y*180}
	object {  pmarrow() scale <1,-1,1> rotate x*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msx,  sy> rotate y*180}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx, msy,  pz> rotate y*180}
	object {  mmarrow() scale <1,-1,1> rotate z*-theta translate < sx, mpz,  sy> rotate y*180}
	object {  mmarrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, msx,  pz> rotate y*180}
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  sx> rotate y*180}

	object {  mmarrow() rotate z*theta translate < sx,  pz,  sy> rotate y*-90}
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate y*-90}
	object {  mmarrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate y*-90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta translate < sy,  pz,  sx> rotate y*-90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate y*-90}
	object {  pmarrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate y*-90}

	object {  mparrow() rotate x*theta translate < sy, mpz,  sx> rotate y*-90}
	object {  mparrow() scale <1,-1,1> rotate x*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msx,  sy> rotate y*-90}
	object {  mparrow() scale <1,-1,1> rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx, msy,  pz> rotate y*-90}
	object {  pparrow() scale <1,-1,1> rotate z*-theta translate < sx, mpz,  sy> rotate y*-90}
	object {  pparrow() rotate z*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy, msx,  pz> rotate y*-90}
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz, msy,  sx> rotate y*-90}
  }

object { orbit }
