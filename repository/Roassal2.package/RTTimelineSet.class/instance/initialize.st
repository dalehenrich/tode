initialization
initialize
	super initialize.
	self initializeShapeBuilder.
	self initializeInteractionBuilder.
	lineIdentifier := #yourself.
	start := #yourself.
	end := #yourself.
	objects := #()