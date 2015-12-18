arcs
arc
	"
	self new arc
	"
	| c  shape|
	c := TRCanvas new.
	shape:= TRArcShape new.
	shape alphaAngle:10  betaAngle: 20  innerRadius: 30 externalRadius: 150. 
	shape color: Color blue.
	c addShape: shape.
	c open.
	
