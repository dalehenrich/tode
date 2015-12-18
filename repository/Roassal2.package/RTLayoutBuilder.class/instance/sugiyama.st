public - layout
sugiyama
	actionOnEdges add: [ :edge | edge shape withVerticallAttachPoint ].
	layout := RTSugiyamaLayout new.
	^ layout