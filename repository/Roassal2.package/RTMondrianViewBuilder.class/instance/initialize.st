initialization
initialize
	super initialize.
	self resetView.
	self resetShapeBuilder.
	self resetInteractionBuilder.
	
	topLevelNodes := OrderedCollection new.
	topLevelEdges := OrderedCollection new.
	nesting := 0.
	