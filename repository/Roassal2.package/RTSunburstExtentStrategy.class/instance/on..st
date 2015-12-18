public
on: elements
	| children arc parent depth radius totalPie recurse a b s |
	recurse := nil.
	recurse := [ :el | | angleOffset auxAngle |
		children := el attributes at: #children.
		parent := el attributes at: #parent.
		arc := el trachelShape.
		depth := el attributes at: #depth.
		
		depth isZero ifTrue: [ 
			arc alphaAngle: 0 betaAngle: 360 innerRadius: 0
				externalRadius: (self hasCenter ifTrue: [ 
					self radius: 1 ]
					ifFalse: [ 0 ]). ]
		ifFalse: [ 
			| temp |
			temp := self radialSpacing * depth.
			radius := self radius: depth.
			arc
				alphaAngle: arc alphaAngle
				betaAngle: arc betaAngle
				innerRadius: radius + temp
				externalRadius: (self radius: depth+1)+ temp].
		children isEmpty ifFalse: [ 
			totalPie := el attributes at: #weight.
			auxAngle := arc alphaAngle.
			angleOffset := (arc betaAngle - arc alphaAngle)/totalPie.
			children do: [ :c |
				a := auxAngle.
				b := auxAngle + (angleOffset * (builder weight rtValue: c model)	).
				s := self angularSpacing.
				auxAngle := b.
				(b - a) > s ifTrue: [ b := b - (s/2). a := a + (s/2). ].
				c trachelShape
					alphaAngle: a
					betaAngle: b
					innerRadius: 0
					externalRadius: 0.
				recurse value: c. ] ].
	].
	recurse value: elements first.