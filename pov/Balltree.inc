#include "colors.inc"
#include "textures.inc"


#local Random_3 = seed (1432);
#local queue_h= 6.50; 
#local queue_r_base = 0.10; 
#local queue_r_top  = 0.010; 



#declare Balltree = union{

union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
	}
	


union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	scale 0.5 translate <0,5,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		scale 0.5 translate <0,5,0>
	}
	



union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	scale 0.5 translate <0,5,0> rotate <0,90,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		scale 0.5 translate <0,5,0> rotate <0,90,0>
	}
	



union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	scale 0.5 translate <0,5,0> rotate <0,180,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		scale 0.5 translate <0,5,0> rotate <0,180,0>
	}
	


union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	scale 0.5 translate <0,5,0> rotate <0,-90,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		scale 0.5 translate <0,5,0> rotate <0,-90,0>
	}
	

union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	rotate <0,90,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		rotate <0,90,0>
	}
	


union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	rotate <0,-90,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) )+1 ,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		rotate <0,-90,0>
	}
	


union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

union{
union {
	
cone { <0,0,0>, queue_r_base, <0,queue_h,0>, queue_r_top
      texture {DMFWood3}
     	translate <0,2.5,0>   
     } 
cone { <0,0,0>, queue_r_base,<0,2.5,0>, queue_r_base
	texture {pigment{Black}}

     } 
cone { <0,0,0>, queue_r_top, <0,0.2,0>,queue_r_top
  	translate <0,2.5 + queue_h 0>
	texture {pigment{White}}
       }
}

	rotate <0,0,-45>
	translate <0,9,0>
	scale 0.5
	rotate <0,180,0>
}

sphere 
{<0,0,0>,0.7 scale <1,1,1>
	  pigment
        {image_map
                {	jpeg concat("ball_maps/b_",str(int( 14*rand( Random_3) ) +1,0,0),".jpeg")
                     map_type 1
                     once
                    interpolate 2
      			 }
		}
		translate <3*sqrt(9.2/2),9.2+3*sqrt(9.2/2),0> scale 0.5
		rotate <0,180,0>
	}
	




}





