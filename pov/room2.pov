#include "colors.inc"
#include "textures.inc"
#include "transforms.inc"

#include "obj_barchair.pov"
#include "obj_poster.pov"
#include "obj_door.pov"

sky_sphere {
   
   pigment {
      Bright_Blue_Sky
   }
}

plane {
   <0, 1, 0>, 0
   scale 1
   
   pigment{ color rgb <0.1,0.35,0>}
   normal { spotted 6.60 }

   rotate <0, 0, 0>
   translate <0, 0, 0>
}

global_settings {
   assumed_gamma 1.5
   noise_generator 2
}

union {
   // Bar room
   box {
      <0, 0, 0>, <-20, 0.1, -20>
      
      pigment{
	  image_map {
		png "planks.png"
		map_type 0
		interpolate 2
		//once
	  }
	  //warp{ repeat <1,0,0> }
      }

      //scale 1
      //translate <10, 0, 10>
      translate <10, 0, 10>
   }
   
   box {
      <-10, 0, -10>, <-9.5, 15, 10>
      
       pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }

      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   box {
      <-10, 0, -10>, <10, 15, -9.5>
      
      pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }

      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   difference {
      box {
         <-10, 0, 10>, <10, 15, 9.5>
         
          pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }

         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
      }
      
      box {
         <-2.4904, 0.1, 9.467>, <2.5, 8, 10.033>
         
         // Door-Frame
          pigment {
      
	 Irregular_Bricks_Ptrn (0.1, 1, 0.5, 0.5)
         color_map {
            [0.01, rgb 0.9]
            [0.01, rgb 0.6]
 	}
      }
      normal {
         Irregular_Bricks_Ptrn (0.1, 1, 0.5, 0.5) 0.2
	}
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
         hollow
      }
   }

        text{ttf "Bigfish.ttf", "PoolBar",0.15, 0
     texture{ pigment{ color rgb<1,0,0>}
              finish { phong 1 reflection 0.3 ambient 0.8}}
      hollow
  interior{
      media{
             emission <1.0,0.0,0.0>*0.3
          } // end media
         } // end interior
     scale<1,1,2>
     rotate<0,180,0>
     translate<2,10,10.2> }
   
   box {
      <-10, 15, -10>, <10, 15.1, 10>
      
       pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }

   //rauch ;)
  box{ <-9,0,-9>, <9,14.8,9>
        pigment { rgbt 1 } 
        hollow  

 interior{ //---------------------
    media{ method 3
           emission <-0.4,0.7,1>*.3
           scattering{ 1, // Type 1 = isotropic scattering, 2 = Mie haze, 3 = Mie murky 
                          // Type 4 = Rayleigh scattering,  5 = Henyey-Greenstein scattering 
                       <1,1,1>*3.00        // color of scattering haze  
                       extinction  1.0    // 0 ~ 1 extinction 
                       // how fast the scattering media absorbs light 
                       // useful i.e. when the media absorbs too much light
                      // eccentricity i.e. -0.6 ~ +0.6 (if type>1 )
           } // end scattering   

           density{ gradient y 
                    turbulence 0.85
                    color_map {
                    [0.00 rgb 0.025] // density at the border of the media
                    [0.05 rgb 0.05]
                    [0.20 rgb 0.1]
                    [0.30 rgb 0.03]
                    [0.40 rgb 0.04]
                    [1.00 rgb 0.05] // densitiy at the center of the media
                               } // end color_map
           } // end of density

           samples 1,2     // 3,3 for adaptive sampling
           intervals 3     //  
           confidence .9   //  
     } // end of media ----------------------------------------------------------------------
  } // ------------------ end of interior
 scale 1
 rotate<0,0,0>
 translate < 0, 12,0> 
} //------------------ end of "Rauch" 





}

union {
   // Pool Room
   box {
      <-10, 0.1, -10>, <10, 0, 10>
      
      pigment {
         wood
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   difference {
      // "Durchbruch"
      box {
         <-10, 0, -10>, <-9.5, 15, 10>
         
         pigment {
            color rgb <0.501961, 0.501961, 0.501961>
         }
         
         normal {
            crackle
            bump_size 2
         }
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
      }
      
      box {
         <-10.1, 0, -8>, <-9.4, 12, 8>
         
         pigment {
            color rgb <0.501961, 0.501961, 0.501961>
         }
         
         normal {
            crackle
            bump_size 2
         }
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
      }
   }
   
   box {
      <-10, 0, -10>, <10, 15, -9.5>
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   difference {
      box {
         <-10, 0, 10>, <10, 15, 9.5>
         
         pigment {
            color rgb <0.501961, 0.501961, 0.501961>
         }
         
         normal {
            crackle
            bump_size 2
         }
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
      }
   }
   
   box {
      <10, 0, -10>, <9.5, 15, 10>
      
      pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   box {
      <-10, 15, -10>, <10, 15.1, 10>
      
      pigment {
         color rgb <0.501961, 0.501961, 0.501961>
      }
      
      normal {
         crackle
         bump_size 2
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   translate x*19.5
}

//objects

object{Door(-2.49, 0.1, 9.5,5,8,0.15) Rotate_Around_Trans(<0,-85,0>,<2.5, 0.1, 9.5>)}


object{Barstool(10,0.1,-4.5) scale 0.6}
object{Barstool(5,0.1,-4.5) scale 0.6}
object{Barstool(0,0.1,-4.5) scale 0.6}
object{Barstool(-5,0.1,-4.5) scale 0.6}
object{Poster("poster.png",6.5,10,-9,5,7) scale 0.75}

//bar
box {
   <-10, 0.1, -5>, <11, 6, -7>
   
   normal {
      wood
      0.2
      turbulence <0, 0, 0>
      lambda 4
   }
   
   pigment {
      color rgb <0.588235, 0.270588, 0>
   }
   scale 0.75
}

camera {
   perspective

   #declare MOVE_FW=0;
   #declare LOOK_LEFT=0;

   #if(MOVE_FW<10)
    #declare MOVE_FW=MOVE_FW+clock;
   #end

   location <-0.0784446, 5.33472, 26.897-clock>
   
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.33333, 0, 0>
   up <0, 1, 0>
   
   look_at <0, 4.7438, -15>
}

light_source {
   <0, 15, 0>, rgb <1, 1, 0.886275>
   cylinder
   radius 70
   falloff 70
   point_at <0, 0, 0>
}