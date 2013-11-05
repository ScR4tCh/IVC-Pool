#include "colors.inc"
#include "textures.inc"

sky_sphere
{
	pigment
	{
		Bright_Blue_Sky
	}

	/*texture
	{
		Shadow_Clouds
	}*/
}


//room
#declare wallthickness = 0.25;
#declare coord = 2.5;
difference
{
   box
   {
      <-coord, -coord, 0>, <coord, coord, coord*2>
      scale 1
      rotate <0, 0, 0>
      
      pigment
      {
         color rgb <0, 0, 0.937255>
      }

      translate y*0.5
   }
   
   box
   {
      <-coord+wallthickness, -1.95, coord*2-wallthickness>, <coord-wallthickness, coord+wallthickness, -(wallthickness*2)>

      texture
      {
      	uv_mapping
   	
     	pigment
	{
     		image_map
		{
			png "uv_room.png"
                	map_type 0
                	interpolate 2
                	//once
              	}
    	}

    	finish { ambient 1 diffuse 0 }
      }

      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
      hollow
   }
   
   box
   {
      <2.75, -1, 1>, <2, 1.5, 3>

      material{
          texture { pigment{ color rgbt<0,1,1,1>}
                    normal { bumps 0.5 scale 0.025 }
                    finish { phong 1.0 reflection 0.15 }
                  } // Ende der Texturbeschreibung
          interior{ ior 1.5
                    caustics 0.25
                  } // Ende der Interior-Beschreibung
          } // Ende der Material-Beschreibung	

      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
      hollow false
   }

   translate y*2
   scale <4, 3, 6>
}

//poster
box
{
      <0, 0, 0>, <1,1,0.01>

        pigment
        {
                image_map
                {
                        png "poster.png"
                        map_type 0
                        interpolate 2
			once
                }
		//translate <-1,1,1>
		scale <1,5/7,1>
        }

      scale <4,7,1>
      rotate <0, 90, 0>
      translate <-9, 4, 8>
      hollow false
}

plane
{
   <0, 1, 0>, 0
   scale 1
   
   pigment{ color rgb <0.75,1,0>}
   normal { bumps 0.50 scale 0.10}

   rotate <0, 0, 0>
   translate <0, 0, 0>
}

global_settings
{
   assumed_gamma 1.5
   noise_generator 2
}

light_source
{
   <4, 5, -5>, rgb <1, 1, 1>
}

camera
{
   perspective
   location <8, 5, -5>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <-9, 4, -3>
}
