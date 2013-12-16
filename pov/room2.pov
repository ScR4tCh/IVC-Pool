#include "colors.inc"
#include "textures.inc"

sky_sphere {
   //*PMRawBegin
   //*PMRawEnd
   
   pigment {
      //*PMName Bright_Blue_Sky
      //*PMRawBegin
      Bright_Blue_Sky
      //*PMRawEnd
   }
}

plane {
   <0, 1, 0>, 0
   scale 1
   
   pigment {
      color rgb <0, 1, 0>
   }
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
      <-10, 0.1, -10>, <10, 0, 10>
      
      pigment {
         wood
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
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
            color rgb <0.501961, 0.501961, 0.501961>
         }
         
         normal {
            crackle
            bump_size 2
         }
         scale 1
         rotate <0, 0, 0>
         translate <0, 0, 0>
         hollow
      }
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

camera {
   perspective
   location <-0.0784446, 5.33472, 26.897-clock>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.33333, 0, 0>
   up <0, 1, 0>
   look_at <0, 4.7438, 0.0248806>
}

light_source {
   <0.0543589, 9.67606, -0.023824>, rgb <1, 1, 1>
}