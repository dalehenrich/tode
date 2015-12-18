public - layout
dominanceTree
	actionOnEdges add: [ :edge | edge shape withVerticallAttachPoint ].
	layout := RTDominanceTreeLayout new.
	^ layout