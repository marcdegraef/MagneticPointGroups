// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: pg_bar4p3mp.pov
// Vers: 3.7
// Desc: pov file for axial rendering of point group pg_bar4p3mp
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
	object {  axis_two() } 
	object {  axis_two()   rotate x* 90.0}
	object {  axis_two()   rotate x* 90.0 rotate y*90.0}

	object {  axis_three()  rotate y*-30.0 rotate x*54.7333 rotate y*45.0}
	object {  axis_three()  rotate y*-30.0 rotate x*54.7333 rotate y*-45.0}
	object {  axis_three()  rotate y* 30.0 rotate x*-54.7333 rotate y*45.0}
	object {  axis_three()  rotate y* 30.0 rotate x*-54.7333 rotate y*-45.0}

	object {  anti_mirrorplane()  rotate x*90.0 rotate y*45.0}
	object {  anti_mirrorplane()  rotate x*90.0 rotate y*-45.0}
	object {  anti_mirrorplane()  rotate x*45.0 }
	object {  anti_mirrorplane()  rotate x*-45.0 }
	object {  anti_mirrorplane()  rotate z*45.0 }
	object {  anti_mirrorplane()  rotate z*-45.0 }
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

	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> rotate y*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate y*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate y*180.0 }

	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> rotate x*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate x*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate x*180.0 }

	object {  pparrow() rotate z*theta translate < sx,  pz,  sy> rotate y*180.0 rotate x*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sy,  sx,  pz> rotate y*180.0 rotate x*180.0 }
	object {  pparrow() rotate z*theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sy,  sx> rotate y*180.0 rotate x*180.0 }

	object {  mmarrow() rotate x*-theta translate < sy,  pz,  sx> }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> }

	object {  mmarrow() rotate x*-theta translate < sy,  pz,  sx>  rotate y*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate y*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate y*180.0 }

	object {  mmarrow() rotate x*-theta translate < sy,  pz,  sx>  rotate x*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate x*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate x*180.0 }

	object {  mmarrow() rotate x*-theta translate < sy,  pz,  sx>  rotate y*180.0 rotate x*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -120.0) translate < pz,  sx,  sy> rotate y*180.0 rotate x*180.0 }
	object {  mmarrow() rotate x*-theta Axis_Rotate_Trans(<1, 1, 1>, -240.0) translate < sx,  sy,  pz> rotate y*180.0 rotate x*180.0 }
  }

object { orbit }
