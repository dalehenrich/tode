initialization
initialize
	super initialize.
	self defaultArrayValues.
	self defaultShapeNode.
	self defaultShapeEdge.
	nodeKiviatElements := OrderedCollection new.
	edgeKiviatElements := OrderedCollection new.