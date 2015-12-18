arcs
arc3
	"
	self new arc3
	"
	| c  shape1 shape2 shape3 shape4|
	c := TRCanvas new.
	shape1:= TRArcShape new.
	shape2:= TRArcShape new.
	shape3:= TRArcShape new.
	shape4:= TRArcShape new.
	shape1 alphaAngle:5  betaAngle: 85 innerRadius: 30 externalRadius: 150. 
	shape1 color: Color blue.
	shape2 alphaAngle:95  betaAngle: 175 innerRadius: 30 externalRadius: 150. 
	shape2 color: Color green.
	shape3 alphaAngle:185  betaAngle: 265 innerRadius: 30 externalRadius: 150. 
	shape3 color: Color yellow.
	shape4 alphaAngle:275  betaAngle: 355 innerRadius: 30 externalRadius: 150. 
	shape4 color: Color red.
	c addShape: shape1. c addShape: shape2. c addShape: shape3. c addShape: shape4.
	c open.
	
