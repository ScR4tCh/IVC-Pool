#include "colors.inc"
#include "textures.inc"


sky_sphere {
    pigment {
    bozo
    color_map {
        [0.0 White*3]
        [0.2 Black]
        [1.0 Black]
    }
    scale .006
    }
}

fog {
  distance 50
  color rgbt <.7,.6,1,.8>
  fog_type 2
  fog_offset .5
  fog_alt 1
  turbulence 0.2
  turb_depth 0.2
}

//room
#declare wallthickness = 0.25;
#declare coord = 2.5;
#declare Rand1= seed (1337);
#declare imgConst =  int(15*rand( Rand1));

#declare PlankNormal =
  normal
  { gradient x 2 slope_map { [0 <0,1>][.05 <1,0>][.95 <1,0>][1 <0,-1>] }
    scale 0.25 rotate <0,90,0>
  };


#declare waterrip= material{
         texture{
          pigment{ rgbf<.93,.95,.98,0.9>*0.95}
          normal { ripples 1.35 scale 0.0125 turbulence 0.3 translate<-0.05,0,0> rotate<0,-20,0>} 
          finish { ambient 0.0
                   diffuse 0.15
                   reflection 0.2
                   specular 0.6
                   roughness 0.005
                  // phong 1 
                  // phong_size 400
                   reflection { 0.2, 1.0 fresnel on }
                   conserve_energy
                 }
           } // end of texture
         
          interior{ ior 1.33 
                    fade_power 1001
                    fade_distance 0.5
                    fade_color <0.8,0.8,0.8> 
                } // end of interior
        };

#declare watermat=     material{
         texture{
          pigment{ rgbf<.98,.98,.98,0.85>*1}
          finish { ambient 0.0
                   diffuse 0.15
                   reflection 0.2
                   specular 0.6
                   roughness 0.005
                  // phong 1 
                  // phong_size 400
                   reflection { 0.03, 1.0 fresnel on }
                //   conserve_energy
                 }
          } // end of texture

          interior{ ior 1.5
                    fade_power 1001
                    fade_distance 0.5
                    fade_color <0.8,0.8,0.8>
                  } // end of interior

 
        };





/*==================LOLLYPOPTREE
blob{
 threshold 0.65
 // center
 sphere{ <0,0,0>, 1, 1.25 scale<1,1,1>}
 // wings
 #local n = 0;    // start
 #local last = 6; // end
 #while (n< last)
  cylinder{<0,0,0>,< 1,0,0>, 1, 1.25
            scale<1,0.5,1>
            rotate<0,0,0>
            translate<1.25,0,0>
            rotate<0,n * 360/last,0>}
    sphere{  < 2.25,0,0>, 1, 1.25
      scale<1,0.5,1>
            rotate<0,0,0>
            translate<1.25,0,0>
            rotate<0,n * 360/last,0>
    }
    
 
 #local n = n + 1; // next number Nr
 #end // ---------------  end of loop
 scale 1
 rotate<90,0,0>
 translate<0,5,0>
   texture{
//   	Blue_Agate
Ruby_Glass

}
 
//  texture{ pigment{ color rgb<0.7,1,0>*0.8}
//           finish { phong 1}}
 }



cylinder{
  	<0,0,0>,< 0.5,0,0>,1
            scale<10,0.25,0.25>
            
		rotate<0,0,90>
            translate<0,0,0>
            
               texture{
 
Candy_Cane
}
            
            
            }


==================*/
#declare gctex=texture{
    pigment { color MediumForestGreen } 
    finish {ambient 0.2 diffuse 0.8}
}
#declare landscape=object {height_field { png "profile04.png" 
 scale <200,20,500> translate<-13,-1.3,-10> }
} 
//sphere {<0,0,0>,2.2 scale <2,1.5,1>  translate<0,0,0>  rotate<0,30,0>
//texture {Rosewood}}
//
//
//difference{
//sphere {<0,0,0>,2.2 scale <2,1.5,1>  translate<0,0,0>  
//texture {Rosewood}
//
//}
//
//sphere {<0,0,0>,2.2 scale <2,1.5,1>  translate<0,1.6,0>  
//texture {Rosewood}}
//
//
//}


//	union{
//	sphere {<0,0,0>,2 scale <2,1.5,1>  translate<0,1.5,0.15> 
//	 texture {Cork} }
//	 
//	 box{<-2,1.5,-2>,<4.5,3,1.3>  scale <1,1,1>  translate<0,-0.5,0> 
//	 
//	
//	}
//}


// box{<-0.5,1.5,-2>,<4.5,3,0.3>  scale <1,1,1>  rotate <0,30,0>
//	 
//	}

#declare Boat= 
union{
difference{
intersection{
//	union{

	sphere {<0,0,0>,2 scale <2,1.5,1>  translate<0,0,0> 
	//texture {Rosewood}
	  pigment
  { color White
  }
  normal
  
  { average normal_map
    { [1 PlankNormal]

    }
      rotate <0,90,90>
  }
	
	
	}
	
//	torus{ 2,0.1 scale <2,1.5,1>
//       texture{ pigment{ color rgb<1,0.65,0>}
//   	finish { phong 1} }
//        translate<0,1.5,0>}
//	}





sphere {<0,0,0>,2 scale <2,1.5,1>  translate<0,0,0.3> 
//texture {Rosewood}
  pigment
  { color White
  }
  normal
  
  { average normal_map
    { [1 PlankNormal]
       
    }
   rotate <0,90,90>
  }

}



}
	union{
	sphere {<0,0,0>,2 scale <2,1.5,1>  translate<0,1.5,0.15> 
	   pigment
  { color White
  }
  normal
  
  { average normal_map
    { [1 PlankNormal]

    }
      rotate <0,90,90>
  } }
	 
		 box{<-5,1.5,-2>,<4.5,3,2>  scale <1,1,1>  translate<0,-1.17,0> 
	 
	
	}
}
}

union{
difference{
torus{ 2,0.1 scale <2,1.5,1>
      pigment{color Firebrick }
        translate<0,0.25,0>}
        
          box{<-4.6,1.5,-2.5>,<4.5,3,0>  scale <1,1,1>  translate<0,-2,0> }
}
        
difference{
torus{ 2,0.1 scale <2,1.5,1>
      pigment{color Firebrick }
        translate<0,0.25,0.3>}
  box{<-4,1.5,0>,<4.5,3,2.5>  scale <1,1,1>  translate<0,-2,0> }
}
translate<-0.1,0.2,0>	
}

}

#declare Boat_position= transform {rotate<0,30,0> translate <0,0.5,0>}

object{landscape texture{gctex scale 3}
translate <-10,-0.5,-65>}


object{Boat transform Boat_position}

difference{
plane{<0,1,0>, 0
      texture{ Polished_Chrome }
normal{ crackle 0.15
        scale 0.75
        turbulence 0.3
        translate<-1,0,5>
      }

 
 
}
       //substract boat
 object{Boat transform Boat_position translate <0,1.0,0>}
}

//plane
//{
//   <0, 1, 0>, 0
//   scale 1
//   material{waterrip}
//  // texture{Polished_Chrome}
//   //pigment{ color rgb <0.75,1,0>}
//   normal { bumps 0.50 scale 0.10}
//
//   rotate <0, 0, 0>
//   translate <0, 0, 0>
//}
//sphere {<0,0,0>,1 scale <5,1.5,1>  translate<0,2,0.3> 
//
//	rotate<0,30,0>}


//#declare Boat = 
//union {
//	intersection{
//		object {Boat_outside}
//		object{Boat_outside scale <0.98,0.95,0.94>  inverse}
//		
//		
//	sphere {<0,0,0>,2 scale <2,1.5,1>  translate<0,2,0.15> 
//	rotate<0,30,0> inverse}
//	}
//}



//object{Boat_outside scale <0.98,0.95,0.94>  inverse}
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
   location <8, 5, -13>
   //location <8, 50, -100>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <5, 4, 0>
}
#declare swimball=
sphere 
{
	<5,0,0>,0.7 scale <1,1,1>
	             pigment
        {
                     image_map
                {
                	
                        //jpeg concat("maps/b_",str(15.00,0,0),".jpeg")
                        //jpeg concat("maps/b_",str(15.00,0,0),".jpeg")
                        jpeg concat("ball_maps/b_",str(1,0,0),".jpeg")
                        //jpeg concat("maps/b_",str(int(15*rand( Rand1)),0,0),".jpeg")
                       // jpeg concat("maps/b_",str(int(10*rand( Rand1))),".jpeg");
                      
                        map_type 1
                        once
                        interpolate 2
                        
                        //once
                      }
                     // scale<2,2,2>
                     // scale<0.0025,0.0025,0.0025> 
                      translate<5,0,0>
                     
            }

            finish { ambient 1 diffuse 0 }
      


}
	
object{swimball
pigment{image_map{
	jpeg "ball_maps/b_13.jpeg"
       map_type 1
        once
	interpolate 2}
}
translate <2,0 + 0.20*sin(clock*2*pi) ,2>
}	

object{swimball
pigment{image_map{
	jpeg "ball_maps/b_1.jpeg"
       map_type 1
        once
	interpolate 2}
}
translate <10,0 + 0.20*sin((clock+0.25)*2*pi),5>
}	


object{swimball

pigment{image_map{
	jpeg "ball_maps/b_8.jpeg"
       map_type 1
        once
	interpolate 2}

}
translate <3,0 + 0.20*sin((clock+0.5)*2*pi),-1>
}


object{swimball
pigment{image_map{
	jpeg "ball_maps/b_11.jpeg"
       map_type 1
        once
	interpolate 2}
}
translate <-7,0 + 0.20*sin((clock+0.75)*2*pi),-4>

}

	
	



