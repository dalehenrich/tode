arcs
arc0
	"
	self new arc0
	"
	| c shape |
	c := TRCanvas new.
	shape:= TRArcShape new.
	shape alphaAngle:0  betaAngle: 360  innerRadius: 0 externalRadius: 100. 
	shape color: Color blue.
	c addShape: shape.
	c open.
	
