events
canvas
	session == Smalltalk session
		ifFalse: [ 
			canvas := AthensCairoSurface extent: extent asIntegerPoint.
			session := Smalltalk session ].
	^ canvas