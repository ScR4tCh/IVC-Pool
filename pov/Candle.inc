#include "colors.inc"
#include "textures.inc"





#local Flame__Shape =
merge{    // egg
intersection{
   sphere{<0,0,0>,1}
   box{<-1,-0.00001,-1>,< 1,1  ,1>}
   scale <1,2.5,1>}
intersection{
   sphere{<0,0,0>,1}
   box{<-1,-1 ,-1>,< 1,0+0.01,1>}
   }
} // end of merge
// -----------------------------------------
#local C__Flame =
object{
  Flame__Shape
  hollow
  pigment{ color rgbf<1,1,1,1>}// clear!
  finish { ambient 0 diffuse 0 }
  interior {
    media {
      emission color rgb<1.0,0.75,0.1>*1.75
      intervals 9
      samples 1, 20
      confidence 0.9999
      variance 1/100
      density{ spherical
               ramp_wave
               turbulence 0.15
               color_map {
               [0.0 color rgb <0.0,0.0,0.0>]
               [0.1 color rgb <0.8,0.3,0.0>]
               [0.9 color rgb <1.0,0.8,0.3>]
               [1.0 color rgb <1.0,1.0,0.1>]
                         } // end color_map
            scale <1,2.5,1>
          } // end of density
    }//end of media
}//------------------------------------------


#declare Candle= 
union{
difference{
cylinder{<0,0,0>,<0,1,0>, 1
          texture{PinkAlabaster}
         
}
sphere{ <0,1,0>, 0.7
     texture{PinkAlabaster}
      }
}

cylinder{<0,0,0>,<0,1.5,0>,0.01
          texture{pigment{Black}}
         
}
cylinder{<0,0,0>,<0,1,0>, 1.1 open
          texture{Chrome_Metal}
         
}
merge{    // egg
intersection{
   sphere{<0,0,0>,1}
   box{<-1,-0.00001,-1>,< 1,1  ,1>}
   scale <1,2.5,1>}
intersection{
   sphere{<0,0,0>,1}
   box{<-1,-1 ,-1>,< 1,0+0.01,1>}
   }

  hollow
  pigment{ color rgbf<1,1,1,1>}// clear!
  finish { ambient 0 diffuse 0 }
  interior {
    media {
      emission color rgb<1.0,0.75,0.1>*1.75
      intervals 9
      samples 1, 20
      confidence 0.9999
      variance 1/100
      density{ spherical
               ramp_wave
               turbulence 0.15
               color_map {
               [0.0 color rgb <0.0,0.0,0.0>]
               [0.1 color rgb <0.8,0.3,0.0>]
               [0.9 color rgb <1.0,0.8,0.3>]
               [1.0 color rgb <1.0,1.0,0.1>]
                         }
            scale <1,2.5,1>
           
          }
             scale 0.3
     translate <0,1.5,0> 
         
    }
  
}

}

}




}
