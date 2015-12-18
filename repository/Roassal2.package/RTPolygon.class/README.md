I am a shape which builds the polygon sequentialy conecting my vertices.

For example:
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
| v  shape element |
v := RTView new.
shape := 
	RTPolygon new 
		vertices:{
		25 @ 00 .
		10 @ 50 .
		50 @ 20 .
		00 @ 20 .
		40 @ 50 }.
element := shape element.
v add: element.
v open
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=