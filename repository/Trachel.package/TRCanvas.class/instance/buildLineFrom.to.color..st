building
buildLineFrom: aPoint to: anotherPoint color: aColor
	|  shape |
	shape := TRLineShape new.
	shape from: aPoint to: anotherPoint color: aColor.
	self addShape: shape.
	^ shape