initialization
initialize
	super initialize.
	extent := 500 @ 500.
	canvas := AthensCairoSurface extent: extent.
	shapes := OrderedCollection new.
	fixedShapes := OrderedCollection new.
	animations := OrderedCollection new.
	camera := TRCamera forCanvas: self.
	color := Color white.
	session := Smalltalk session