testing
setExpandedOnDirection: aDirection with: nodes
	self setExpandedOnDirection: aDirection.
	^ expandedNodes at: aDirection key put: nodes