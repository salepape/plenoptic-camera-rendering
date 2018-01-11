#include "colors.inc" // the include files contain
#include "stones.inc" // pre-defined scene elements

// set the background
background { color White }

// defining a light source
light_source { <2, 4, -3> color White}

// a camera
// camera { 
// 	location <0, 2, -3>
// 	look_at  <0, 1,  2>
// }

// my camera
camera { 
	// plenoptic
	location <0, 2, -3>
	// direction
	// up
	look_at  <0, 1,  2>
	// lens_pitch 0.014
	// lens_pitch -1
	// mainlens_diameter 0.0
}

// a sphere
sphere {
	<0, 1, 2>, 2
	texture {
		pigment { color Yellow }
	}
}

// a stone
box {
	<-1.5, 1, -1>, // near lower left corner
	< 1, 0.5, 3>   // Far upper right corner
	texture {
	T_Stone25     // Pre-defined from stones.inc
	scale 4       // Scale by the same amount in all
	// directions
	}
	rotate y*20     // Equivalent to "rotate <0,20,0>"
}
