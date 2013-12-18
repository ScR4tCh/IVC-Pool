#macro Barstool(BSX,BSY,BSZ)

union {
   cylinder {
      <BSX, BSY+5, BSZ>, <BSX, BSY+5.25, BSZ>, 1.75
      
      pigment {
         color rgb <0.752941, 0, 0>
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      <BSX, BSY+5, BSZ-1>, <BSX, BSY, BSZ-2>, 0.15
      open
      
      pigment {
         color rgb <0.517647, 0.235294, 0>
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      <BSX, BSY+5, BSZ+1>, <BSX, BSY, BSZ+2>, 0.15
      
      pigment {
         color rgb <0.517647, 0.235294, 0>
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      <BSX-1, BSY+5, BSZ>, <BSX-2, BSY, BSZ>, 0.15
      
      pigment {
         color rgb <0.517647, 0.235294, 0>
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   cylinder {
      <BSX+1, BSY+5, BSZ>, <BSX+2, BSY, BSZ>, 0.15
      
      pigment {
         color rgb <0.517647, 0.235294, 0>
      }
      scale 1
      rotate <0, 0, 0>
      translate <0, 0, 0>
   }
   
   torus {
      1.5, 0.1
      
      pigment {
         color rgb <1, 0.839216, 0.121569>
      }
      
      finish {
         metallic 2
         
         reflection {
            rgb <0, 0, 0>
            metallic 2
         }
      }
      scale 1
      rotate <0, 0, 0>
      translate <BSX,(BSY)*2+1,BSZ>
   }


}
#end