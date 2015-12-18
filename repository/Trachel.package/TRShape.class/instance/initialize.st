initialization
initialize
	super initialize.
	color := Color gray.
	strokePaint := Color black.
	matrix := AthensAffineTransform new.
	rotationAngleDegrees := 0.
	self position: 0 @ 0.
	session := Smalltalk session.