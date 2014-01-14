#include "colors.inc"
#include "textures.inc"




#declare Chalk =
union{
difference{
box {<0,0,0> <1,1,1>
	pigment{ DarkSlateGray}
                 normal { wrinkles 0.75 scale 0.1 }
                 finish { ambient 0.05 diffuse 0.9 }

}
sphere {<0.5,1.25,0.5> 0.5
		pigment{ DarkSlateGray}
                 normal { wrinkles 0.75 scale 0.1 }
                 finish { ambient 0.05 diffuse 0.9}
	}
}
box {<-0.01,-0.01,-0.01> <1.01,0.75,1.01>
	texture{
		      	uv_mapping pigment{
		image_map{ png "chalk3.png"
                map_type 0
                interpolate 2
                once
		}
//
              }
		
		}

}

}
