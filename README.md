# Magnetic Point Groups
This repository contains shell scripts and Rayshade 4.0 input files to generate all the stills and movies of the [mpg.web.cmu.edu](http://mpg.web.cmu.edu) site.

## Requirements
To run the scripts, you will need to install two different packages
- [Rayshade 4.0](https://github.com/cek/rayshade4)
- [ffmpeg](https://github.com/FFmpeg/FFmpeg)

Note that this package does **not** require the use of the Utah Raster toolkit when installing Rayshade.

The [mpg.web.cmu.edu](http://mpg.web.cmu.edu) site files were generated using the Mac OS X operating system (version ) on a 2017 Mac Pro. It is possible that they will also run on a Linux box but this has not been tested. The scripts use basic UNIX commands, including echo, date, cd, tar, gzip, rm, mv, and sed. The scripts should be executed in a csh shell.

The first commit of this package represents the version of the mpg web site before September 2018; the build uses several ImageMagick programs (convert, image2ppm, and ppmtoy4m) along with the mpeg2enc program to generate all the movies. In the current version, we are in the process of replacing those programs with single calls to the ffmpeg program, which is more versatile at creating the necessary movie output files.  The original movie files were in mpeg4 format, the current default format is .avi.

## How to run the scripts
The top folder of this package contains a *makeall* script that controls the entire build. All the image stills and movies will be generated in a folder called mpg-build inside this distribution.  Note that a complete build of all the stills and movies will take several days, so you should run it as follows (in a csh shell):

csh> nohup makeall >makeall.out &

Then take a vacation for a few days ... When the whole thing is complete, you should have a number of  tar-ball files containing all the rendered images and movies in the mpg-build folder.

## Output types
The scripts generate a number of different representations for the 122 magnetic point groups:
- *raw* [only the symmetry elements for the 32 regular point groups are displayed without any objects]
- *scalar* [the object is a scalar, ie., a small blue sphere, without handedness]
- *scalar (anaglyph)* [similar to *scalar*, but the images are red-blue anaglyphs]
- *pseudoscalar* [the object is a righthanded helix made from multiple spheres]
- *polar* [the object is a polar vector]
- *axial* [the object is an axial vector; available for all 122 magnetic point groups]

For details on the underlying math and physics, please refer to the following paper: M. De Graef, [*Visualization of time-reversal symmetry in magnetic point groups*](https://link.springer.com/article/10.1007/s11661-010-0171-0), Met. Mat. Trans. A, vol. 41, pp.1321-1329 (2010). A similar article was published as [Teaching Pamphlet #23](https://www.iucr.org/education/pamphlets/23) by the International Union of Crystallography.

## Things to do
- run multiple instantiations of rayshade on as many cores as are available
- allow for partial builds (e.g., only the raw stills, or only the axial movies, or only orthorhombic symmetry, etc...)
- implement build on Linux and Windows

## Funding acknowledgment
This material is based upon work initially supported by the National Science Foundation under Grant Nos. **DMR-0809048** and **DMR-1005330**. The current release on GitHub was supported by Grant No. **DMR-1564550**.