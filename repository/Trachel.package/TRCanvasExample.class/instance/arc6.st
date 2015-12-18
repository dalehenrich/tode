arcs
arc6
	"
	self new arc6
	"
	| c  shape shape2|
	c := TRCanvas new.
	shape:= TRArcShape new.
	shape alphaAngle:10  betaAngle: 80  innerRadius: 30 externalRadius: 150. 
	shape color: Color blue.
	shape2:=TRBoxShape new.
	shape2 fromRectangle: (shape topLeft corner: shape bottomRight).
	shape2 color: Color red.
	c addShape: shape.
	c addShape: shape2.
	c open.
	
