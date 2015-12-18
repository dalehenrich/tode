public - layout
horizontalTree
	actionOnEdges add: [ :edge | edge shape withHorizontalAttachPoint ].
	layout := RTHorizontalTreeLayout new.
	^ layout