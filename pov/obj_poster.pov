#macro Poster(POIM,POX,POY,POZ,ASPX,ASPY)
box
{
      <0, 0, 0>, <1,1,0.01>

        pigment
        {
                image_map
                {
                        png POIM
                        map_type 0
                        interpolate 2
			once
                }
		scale <1,ASPX/ASPY,1>
        }

      scale <ASPX,ASPY,1>
      rotate <0, 180, 0>
      translate <POX, POY, POZ>
      hollow false
}
#end