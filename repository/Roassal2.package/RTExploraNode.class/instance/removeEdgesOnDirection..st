removing
removeEdgesOnDirection: aDirection
	| elem |
	(aDirection value = #From)
		ifTrue: [ element outgoingEdges do: [ :edge |
				elem := edge to.
				elem = (parentNode element) ifFalse: [ edge remove] ]
		]
		ifFalse: [ element incomingEdges do: [ :edge |
				elem := edge from.
				elem = (parentNode element) ifFalse: [ edge remove] ]
		].