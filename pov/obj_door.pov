#macro Door(DOX,DOY,DOZ,DOW,DOH,DOS)
box {
   <DOX, DOY, DOZ>, <DOX+DOW, DOY+DOH, DOZ+DOS>
   
   pigment {
     Cherry_Wood
   }
   
   // Door
   scale 1
}
#end