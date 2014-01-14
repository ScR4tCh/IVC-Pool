#include "colors.inc"
#include "textures.inc"
#include "Bottlecap.inc"
#include "Balltree.inc"
#include "Ballhouse.inc"
#include "Chalk.inc"
#include "Candle.inc"


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

#declare Random_3 = seed (1432);
#declare Random_4 = seed (7242);

#declare wallthickness = 0.25;
#declare coord = 2.5;



 plane{ <0,1,0>, 0
        texture{
         pigment{color rgb<.35,.65,0>*.7}
         normal { bumps 0.75 scale 0.015}
         finish { phong 0.1 }
        } 
      }



global_settings
{
   assumed_gamma 1.5
   noise_generator 2
}

light_source
{
   <5, 5, -5>, rgb <1, 1, 1>
}

camera
{
   perspective
  location <8, 5, -17>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <5, 4, 0>
}

box{<0,0,0>,<15,0.5,5>
     texture{DMFWood1}
     translate <0,2,0>
    } 

cylinder{<0.5,0,0.5>,<0.5,2,0.5>, 0.5
          texture{Cork}
        }
 cylinder{<0.5,0,0.5>,<0.5,2,0.5>, 0.5
          texture{Cork}
          translate <14,0,0>
        }
    cylinder{<0.5,0,0.5>,<0.5,2,0.5>, 0.5
          texture{Cork}
          translate <0,0,4>
        }
      cylinder{<0.5,0,0.5>,<0.5,2,0.5>, 0.5
          texture{Cork}
          translate <14,0,4>
        }

object{Candle scale 0.75 translate <5,2.5,2.25> }
object{Candle scale 0.75 translate <9,2.5,2.25> }


object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <2.25,2.8,0.3>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <4.25,2.8,0.3>}
object{Bottlecap texture {Chrome_Metal}rotate <180,0,0> translate <6.25,2.8,0.3>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <8.25,2.8,0.3>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <10.25,2.8,0.3>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <12.25,2.8,0.3>}

object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <2.25,2.8,2.5>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <4.25,2.8,2.5>}
object{Bottlecap texture {Chrome_Metal}rotate <180,0,0> translate <6.25,2.8,2.5>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <8.25,2.8,2.5>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <10.25,2.8,2.5>}
object{Bottlecap texture {Chrome_Metal} rotate <180,0,0> translate <12.25,2.8,2.5>}



object {Chalk rotate <0,10,0> translate <2,0, 4.75> }
object {Chalk rotate <0,25,0>translate <4,0, 4.75>}
object {Chalk translate <6,0, 4.75>}
object {Chalk rotate <0,25,0> translate <8,0,4.75>}
object {Chalk  rotate <0,-10,0> translate <10,0,4.75>}
object {Chalk rotate <0,20,0> translate <12,0,4.75>}

object {Chalk rotate <0,25,0> translate <2,0, -0.75>}
object {Chalk translate <4,0, -0.75>}
object {Chalk rotate <0,15,0>translate <6,0, -0.75>}
object {Chalk translate <8,0, -0.75>}
object {Chalk rotate <0,20,0>translate <10,0, -0.75>}
object {Chalk rotate <0,-25,0>translate <12,0, -0.75>}

object {Balltree}
object {Ballhouse scale 2 translate <0,0,40>}
object {Ballhouse scale 2 translate <20,0,40>}





