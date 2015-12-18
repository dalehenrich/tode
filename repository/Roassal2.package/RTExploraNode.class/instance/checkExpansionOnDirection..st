testing
checkExpansionOnDirection: aDirection
	(((expandedNodes at: aDirection) collect: [ :x | x element model ]) includesAllOf: (expansion at: aDirection))
		ifTrue: [ ^ self setExpandedOnDirection: aDirection ]
		ifFalse: [ ^ false ]