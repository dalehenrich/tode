arcs
arc7
	"
	self new arc7
	"
	| c shape|
	c := TRCanvas new.
	1 to: 90 by: 10 do: [ :angle |
		shape:= TRArcShape new.
		shape alphaAngle: 0  betaAngle: (angle)  innerRadius: 30 externalRadius: 150. 
		shape color: (Color blue alpha: 0.2).
		c addShape: shape ].
	c open.
	
