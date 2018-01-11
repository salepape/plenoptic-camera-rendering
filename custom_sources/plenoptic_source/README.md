POUR COMPILER
ALORS LA COLLE !

__________________________________________________
camera.h
__________________________________________________
74
	#define PLENOPTIC_CAMERA		14

94
	DBL Lens_Pitch;						//Mean distance between two lenses
	DBL Main_lens_diameter;				//Diameter of the main lens (in millimeter)

	// DBL Zero_Parallax;				// Distance to zero parallax, this is the dome radius for stereo fisheye
	// DBL Eye_Offset;					// + or - 1/2 eye separation
	// DBL Fish_XOffset,Fish_YOffset;	// Offset in each direction, -1..1
	// DBL Fish_ZOffset;				// Normally >= 0

__________________________________________________
parser.cpp
__________________________________________________
1388
	New.Lens_Pitch = 0;
        New.Main_lens_diameter = 10;


1442
	CASE(PLENOPTIC_CAMERA)
		New.Type = PLENOPTIC_CAMERA;
	END_CASE

1637
	case PLENOPTIC_CAMERA:
		EXPECT
		    CASE (ANGLE_TOKEN)
			New.Angle = Parse_Float();
			if (New.Angle < 0.0)
			    Error("Negative viewing angle.");
		    END_CASE

		    CASE (PITCH_TOKEN)
			New.Lens_Pitch = Parse_Float();
			if (New.Lens_Pitch < 0.0)
			    Error("Lenses are inside out.");
		    END_CASE

                    CASE (DIAM_TOKEN)
                        New.Main_lens_diameter = Parse_Float();
                        if (New.Main_lens_diameter <= 0.0)
                            Error("Error: Parser.cpp: Main lens diameter is equal to zero or less.");
                    END_CASE

		    OTHERWISE
			UNGET
			if(Parse_Camera_Mods(New) == false)
			    EXIT
		    END_CASE
		END_EXPECT
	break;

1655
	if ((New.Type == PERSPECTIVE_CAMERA) || (New.Type == ORTHOGRAPHIC_CAMERA) || (New.Type == PLENOPTIC_CAMERA))
__________________________________________________
reservedwords.h
__________________________________________________
56
	PLENOPTIC_TOKEN,
	PITCH_TOKEN,
	DIAM_TOKEN,
__________________________________________________
reservedwords.cpp
__________________________________________________
54
    {PLENOPTIC_TOKEN, "plenoptic"},
    {PITCH_TOKEN, "lens_pitch"},
    {DIAM_TOKEN, "mainlens_diameter"},

__________________________________________________
tracepixel.cpp
__________________________________________________
313
    DBL r,dtheta,theta,atheta,theta2;
    VECTOR vr,vd,vu,vt1,vt2;

352
	case PLENOPTIC_CAMERA:
		//Lens1 ? //Normalised projection plane coordinates from -0.5 to 0.5.
		x0 = x / width - 0.5;
		y0 = ((height - 1) - y) / height - 0.5;

		// std::cout << "x = " << x << " and y = " << y << std::endl;
		// std::cout << "width = " << width << " and height = " << height << std::endl;
		// std::cout << "x0 = " << x0 << " and y0 = " << y0 << std::endl;

		// Offset ray length //Lens2 ?
		// x0 -= camera.Lens_Pitch / (2 * 10/*camera.Zero_Parallax*/ * tan(camera.Angle * M_PI_360));

		//test values
		// x0 = 0.38;
		// y0 = 0.47;

		// Create primary ray
		ray.Direction = cameraDirection + x0 * cameraRight + y0 * cameraUp;
	
		// Offset the camera right
		cameraRight.normalized();
		ray.Origin = cameraLocation + camera.Lens_Pitch * cameraRight;

		InitRayContainerState(ray,true);
		// Precompute_Camera_Constants = false;
	break;









