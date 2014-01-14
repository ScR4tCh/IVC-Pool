#include "colors.inc"
#include "textures.inc"


#local Random_2 = seed (1337);

#declare Ballhouse =
difference{

sphere 
{
	<0,0,0>,4 scale <1,1,1>
	pigment{image_map{
	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_2) ) +1,0,0),".jpeg")
       map_type 1
        once
	interpolate 2}
	          translate<5,-2,0>
                 scale 0.025
                 rotate<0,-30,0>
}
translate <0,0,10>
scale 1.1
}	
sphere  {<0,0,0>,2.5 scale <1,1,1>
translate<0,0,9>
}
}



