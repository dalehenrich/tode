building
buildCircleFrom: aPoint to: anotherPoint color: aColor
	| shape |
	shape := TREllipseShape new.
	shape from: aPoint to: anotherPoint color: aColor.
	self addShape: shape.
	^ shape