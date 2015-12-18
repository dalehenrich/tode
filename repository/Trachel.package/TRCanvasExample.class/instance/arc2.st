arcs
arc2
	"
	self new arc
	"
	| c  shape1 shape2 shape3 shape4|
	c := TRCanvas new.
	shape1:= TRArcShape new.
	shape2:= TRArcShape new.
	shape3:= TRArcShape new.
	shape4:= TRArcShape new.
	shape1 alphaAngle:10  betaAngle: 80 innerRadius: 30 externalRadius: 150. 
	shape1 color: Color blue.
	shape2 alphaAngle:100  betaAngle: 170 innerRadius: 30 externalRadius: 150. 
	shape2 color: Color green.
	shape3 alphaAngle:190  betaAngle: 260 innerRadius: 30 externalRadius: 150. 
	shape3 color: Color yellow.
	shape4 alphaAngle:280  betaAngle: 350 innerRadius: 30 externalRadius: 150. 
	shape4 color: Color red.
	c addShape: shape1. c addShape: shape2. c addShape: shape3. c addShape: shape4.
	c open.
	
