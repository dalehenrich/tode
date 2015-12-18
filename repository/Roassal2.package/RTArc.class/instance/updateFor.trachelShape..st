hooks
updateFor: anElement trachelShape: trachelShape
	trachelShape isNil ifTrue: [ ^ self ].
	trachelShape 
		alphaAngle: (self alphaAngleFor: anElement) 
		betaAngle: (self betaAngleFor: anElement)  
		innerRadius: (self innerRadiusFor: anElement) 
		externalRadius: (self externalRadiusFor: anElement).
	trachelShape color: (self colorFor: anElement).
	^ trachelShape