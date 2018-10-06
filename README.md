# Magnetic Point Groups
This repository contains shell scripts and PoVray input files to generate all the stills and movies of the [mpg.web.cmu.edu](http://mpg.web.cmu.edu) site. It has also contains a number of scripts that will generate a complete web site similar to the original one, so you can locally post it.

## Requirements
To run the scripts, you will need to install two different packages
- [Command line PoVray for Mac OS X](http://megapov.inetart.net/povrayunofficial_mac/downloads/PovrayCommandLineMacV2.zip)
- [ffmpeg](https://github.com/FFmpeg/FFmpeg)

The [mpg.web.cmu.edu](http://mpg.web.cmu.edu) site files were generated using the Mac OS X operating system (version 10.13.3) on a 2017 Mac Pro. *It is possible that they will also run on a Linux box but this has not been tested.* The scripts use basic UNIX commands, including echo, date, cd, tar, gzip, rm, mv, and sed. The scripts should be executed in a bash shell.

The first commit of this package represents the version of the mpg web site before September 2018; the build uses several RayShade and several ImageMagick programs (convert, image2ppm, and ppmtoy4m) along with the mpeg2enc program to generate all the movies. In the current version, we have replaced those programs with POVray and single calls to the ffmpeg program, which is more versatile at creating the necessary movie output files.  The original movie files were in mpeg3 format, the current default format is .mp4.

On Mac OS X, the ImageMagick package is installed by default, and several scripts require it for file conversions and to merge image files together into a single image. On other platforms you will need to install [ImageMagick](https://imagemagick.org/script/download.php), and set the shell script variable in the RenderParameters file to the correct location of the *convert* program.

## How to run the scripts
The top folder of this package contains a *makeall* script that controls the entire build. Before you run the script, you will need to copy the RenderParameters.template file to a file called RenderParameters in the top folder of the package.  Then edit the file and set all the relevant parameters, including the following paths (example given for Mac OS X):
- POVRAY=/path/PovrayCommandLineMacV2/Povray37UnofficialMacCmd
- POVRAYinclude=/path/PovrayCommandLineMacV2/include
- FFMPEG=/path/ffmpeg
- CONVERT=/path/convert

where *path* is the full path to each program. Note that the name of the POVRAY and POVRAYinclude variables may be different on different platforms.

Note that a complete build of all the stills and movies can easily take several hours depending on the number of threads you specify, so you should run it as follows (in a bash shell):

bash> ./makeall 

Then go have some coffee... When the whole thing is complete, you should have a number of tar-ball files (*.tar.gz) in the BUILD_FOLDER, containing all the rendered images and movies. You can also send the command to the background using nohup and &, or run it inside the *screen* program; check the web for information on how to do that.

## Output types
The scripts generate a number of different representations for the 122 magnetic point groups:
- *raw* [only the symmetry elements for the 32 regular point groups are displayed without any objects]
- *scalar* [the object is a scalar, ie., a small blue sphere, without handedness]
- *anaglyph* [similar to *scalar*, but the images are red-blue anaglyphs]
- *pseudoscalar* [the object is a righthanded helix made from multiple spheres]
- *polar* [the object is a polar vector]
- *axial* [the object is an axial vector; available for all 122 magnetic point groups]

Note that the script will generate the left and right eye frames for the anaglyphs in red-blue anaglyph mode.

For details on the underlying math and physics, please refer to the following paper: M. De Graef, [*Visualization of time-reversal symmetry in magnetic point groups*](https://link.springer.com/article/10.1007/s11661-010-0171-0), Met. Mat. Trans. A, vol. 41, pp.1321-1329 (2010). A similar article was published as [Teaching Pamphlet #23](https://www.iucr.org/education/pamphlets/23) by the International Union of Crystallography.

## Changing the defaults
You are more than welcome to modify some of the rendering settings which are defined in the makeall file.  At this point in time, you can modify the size of the stills and the size of the movies, as well as the number of frames in the movies.  They are set by the following shell variables:
- STILL_SIZE  [all stills will have dimensions STILL_SIZE x STILL_SIZE, default 1280]
- STILL_SIZE_MONTAGE  [this is used for the 2x2 montages, default 640]
- MOVIE_SIZE  [all movies will have dimensions MOVIE_SIZE x MOVIE_SIZE, default 800]
- NFRAMES  [number of movie frames, default 359 (integer, starts at 0)]
- FRAMESTEP  [angular step size between frames, default 1 degree (integer)]


## Things to do
- implement build on Linux and Windows
- implement automatic generation of complete Magnetic Point Groups web site

## Funding acknowledgment
This material is based upon work initially supported by the National Science Foundation under Grant Nos. **DMR-0809048** and **DMR-1005330**. The current release on GitHub was supported by Grant No. **DMR-1564550**.