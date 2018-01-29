#include "colors.inc" // the include files contain
#include "stones.inc" // pre-defined scene elements

// set the background
background
{
	color Black
}

// defining a light source
light_source
{
	<2, 4, -3>
	color White
}

/*
// a camera
camera
{
	location <0, 10, -3>
	look_at  <0, 2,  2>
}
*/

// my camera
camera
{
	// plenoptic
	location <0, 2, -2>
	// direction
	// up
	look_at  <0, 3, 1>
	// lens_pitch 0.014
	// lens_pitch -1
	// mainlens_diameter 0.0
}

/*
camera
{
    location <1,1.5,-3>
    look_at  <0,1,0>
}

light_source
{
    <0,4,-3>
    rgb <1,1,1>
}
*/

plane
{
    y
    0
    pigment
	{
    	rgb <1,1,0>
    }
}

box
{
  	<-0.5,0,-0.5>
    <0.5,1,0.5>
    pigment
	{
    	rgb <1,0,0>
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


/*
// a sphere
sphere
{
	<0, 1, 2>, 2
	texture
	{
		pigment
		{
			color Yellow
		}
	}
}

// a stone
box
{
	<-1.5, 1, -1>, // near lower left corner
	< 1, 0.5, 3>   // Far upper right corner
	texture
	{
		T_Stone25     // Pre-defined from stones.inc
		scale 4       // Scale by the same amount in all
		// directions
	}
	rotate y*20     // Equivalent to "rotate <0,20,0>"
}
*/
