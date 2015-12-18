public - hooks
endingPointOf: anEdge
	^ (inverted ifTrue: [anEdge from] ifFalse: [anEdge to]) position