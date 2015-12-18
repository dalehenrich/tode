initialization
initialize
	super initialize.
	self initializeShapeBuilder.
	self initializeInteractionBuilder.
	models := OrderedCollection new