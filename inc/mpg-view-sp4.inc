// Copyright (c) 2008-2018, Marc De Graef Research Group/Carnegie Mellon University
// BSD2 license, see license.txt file accompanying this distribution

// Persistence of Vision Ray Tracer Scene Description File
// File: mdg-view.pov
// Vers: 3.7
// Desc: definitions of camera parameters and lighting
// Date: 09/19/2018
// Auth: Marc De Graef

#declare cx=2.2;
#declare cy=2.6;

// declare the camera parameters
  camera {
	//orthographic 
	perspective
	location < cx, 1.7, cy>
	sky < 0.0, 1.0, 0.0>
	right x*image_width/image_height
	up y
	angle 50
	look_at < 0.0, 0.0, 0.0>
  }

// light sources and background
   light_source {<500,500,-500> color White shadowless}
   light_source {<500,-100,-500> rgb <0.4,0.3,0.3> shadowless}
   light_source {<-500,0,-500> rgb <0.3,0.3,0.4> shadowless}
   sky_sphere {
      pigment {
         planar
         color_map { [0.0 color blue 1] [1.0 color rgb <0.8,0.8,1.0>] }
      }
   }

#declare px=0.65-0.65*clock/9.0;
#declare py=0.65-0.65*clock/9.0;
#declare pz=0.0;
#declare mpx=-px;
#declare mpy=-py;
#declare mpz=-pz;
