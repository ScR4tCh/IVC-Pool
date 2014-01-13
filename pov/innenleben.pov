#include "colors.inc"
#include "textures.inc"

#declare tubethickness = 0.25;
#macro TubeCylinder(X,Y,Z,Length,Radius)
difference
{
	cylinder
	{
	    <X,Y,Z>, <X,Y,Z+Length>, Radius
	    
	    pigment
	      {
	         color rgb <0, 0, 0>
	      }
	 }
	 
	cylinder
	{
	    <X,Y,Z-tubethickness>, <X,Y, Length+ tubethickness>, Radius-tubethickness  
	    
	    pigment
	      {
	         color rgb <0.1, 0.1, 0.1>
	      }
	 }
}
#end
//#declare StuhlObject = Stuhl(X,Y,Z)
union
{
	difference
	{
		TubeCylinder(0,0,0,30,2)
		
		box
		{
		      <1, -1, 3>, <3, 1, 9>
		      scale 1
		      rotate <0, 0, 0>
		      
		      pigment
		      {
		         color rgb <0.5, 0.2, 0>
		      }
		
		      translate y*0.5
		}
	
		box
		{
		      <1, -1, 14>, <3, 1, 20>
		      scale 1
		      rotate <0, 0, 0>
		      
		      pigment
		      {
		         color rgb <0.5, 0.2, 0>
		      }
		
		      translate y*0.5
		}
	}
	
	difference
	{
		box
		{
		      <1, -1-tubethickness, 3>, <3.5+tubethickness, 1+tubethickness, 9>
		      scale 1
		      rotate <0, 0, 0>
		      
		      pigment
		      {
		         color rgb <0.5, 0.2, 0>
		      }
		
		      translate y*0.5
		}
		
		cylinder
		{
		    <0,0,0>, <0,0,30>, 2
		    
		    pigment
		      {
		         color rgb <0.5, 0.2, 0> 
		      }
		 }
		 
		 box
		{
		      <1, -1, 3>, <3.5, 1, 9>
		      scale 1
		      rotate <0, 0, 0>
		      
		      pigment
		      {
		         color rgb <0.5, 0.2, 0>
		      }
		
		      translate y*0.5
		}
	}
}

light_source
{
   <0, 0, 2>, rgb <1, 1, 1>
}
 
 sky_sphere
{
        pigment
        {
                color rgb <1, 1, 1>
        }
}
   
global_settings
{
   assumed_gamma 1.5
   noise_generator 2
}

camera
{
   perspective
   location <0, 0, -2>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <0, 0, 0>
}
