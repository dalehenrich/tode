adding - nodes
nodes: objects
	| elements |
	elements := shapeBuilder elementsOn: objects.
	view addAll: elements.

	interactionBuilder setUpElements: elements.

	topLevelNodes addAll: elements.

	"Do we really want to reset the shape builder? Users often find this disturbing"
	self resetShapeBuilder.
	^ elements