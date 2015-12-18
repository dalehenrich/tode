adding
addShape: aRTShape
	(shape class == RTNoShape)  
		ifTrue: [	shape := aRTShape instance ]
		ifFalse: [ shape := RTCompositeShape with: shape with: aRTShape ].
	trachelShape := shape trachelShapeFor: self
