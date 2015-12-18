public - hooks
startingPointOf: anEdge
	^ (inverted ifTrue:[anEdge to] ifFalse:[anEdge from]) position