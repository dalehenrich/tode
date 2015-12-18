public - layout
horizontalDominanceTree
	actionOnEdges add: [ :edge | edge shape withHorizontalAttachPoint ].
	layout := RTHorizontalDominanceTreeLayout new.
	^ layout