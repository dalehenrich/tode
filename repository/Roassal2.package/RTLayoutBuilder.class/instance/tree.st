public - layout
tree
	actionOnEdges add: [ :edge | edge shape withVerticallAttachPoint ].

	layout := RTTreeLayout new.
	^ layout