accessing
expandedNodes
	^ expandedNodes inject: #() into: [ :acc :next | (acc, (next value asArray)) ]