arcs
arc4
	"
	self new arc4
	"
	| c  shape1 shape2 shape3 shape4|
	c := TRCanvas new.
	shape1:= TRArcShape new.
	shape2:= TRArcShape new.
	shape3:= TRArcShape new.
	shape4:= TRArcShape new.
	shape1 alphaAngle:0  betaAngle: 90 innerRadius: 130 externalRadius: 150. 
	shape1 color: Color blue.
	shape2 alphaAngle:90  betaAngle: 180 innerRadius: 130 externalRadius: 150. 
	shape2 color: Color green.
	shape3 alphaAngle:180  betaAngle: 270 innerRadius: 130 externalRadius: 150. 
	shape3 color: Color yellow.
	shape4 alphaAngle:270  betaAngle: 360 innerRadius: 130 externalRadius: 150. 
	shape4 color: Color red.
	c addShape: shape1. c addShape: shape2. c addShape: shape3. c addShape: shape4.
	c open.
	
