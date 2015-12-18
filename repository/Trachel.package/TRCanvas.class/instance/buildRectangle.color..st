building
buildRectangle: aRectangle color: aColor
	| shape |
	shape := TRBoxShape new.
	shape fromRectangle: aRectangle color: aColor.
	self addShape: shape.
	^ shape