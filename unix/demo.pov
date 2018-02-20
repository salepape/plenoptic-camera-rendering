#include "colors.inc" // the include files contain
#include "stones.inc" // pre-defined scene elements

// set the background
background
{
	color Gray
}

// defining a light source
light_source
{
	<2, 4, -3>
	color White
}

// set a camera
camera
{
	// plenoptic
	location <8, 2, -5>
	// direction
	// up
	look_at  <0, 0.5, 1>
	// look_at  <0, 3, 1>
	// lens_pitch 0.014
	// lens_pitch -1
	// mainlens_diameter 0.0
}

plane
{
    y
    0
    pigment
	{
    	rgb <1,0,0>
    }
}

box
{
    <-0.5,0,-0.5>
    <0.5,1,0.5>
    pigment
	{
    	rgb <1,1,0>
    }
}

sphere
{
    <0,1.3,0>
    0.3
    pigment
	{
        rgb <0,0,1>
    }
}

cylinder
{
    <-1.5,0.5,0>
    <1.5,0.5,0>
    0.3
    pigment
	{
		rgb <0,1,0>
	}
}

cone
{
    <0,0.5,-0.5>
    0.3
    <0,0.5,-1>
    0
    pigment
	{
		rgb <1,0,1>
	}
}

torus
{
    1
    0.1
    pigment
	{
		rgb <0,1,1>
	}
}

