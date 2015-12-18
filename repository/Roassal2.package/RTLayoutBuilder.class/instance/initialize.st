initialization
initialize
	super initialize.
	layout := RTFlowLayout new.
	actionOnEdges := OrderedCollection new.
	partitions := OrderedCollection new.
	dynamicForceBasedLayout := false