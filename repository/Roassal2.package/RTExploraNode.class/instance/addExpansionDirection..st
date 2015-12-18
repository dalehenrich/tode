adding
addExpansionDirection: aDirection
	expanded at: aDirection key put: false.
	expandedNodes at: aDirection key put: (Set new).
	^ directions at: aDirection key put: aDirection value.