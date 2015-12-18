public - hooks
startingPointOf: anEdge
	^ (super startingPointOf: anEdge) + (self offsetNormalFor: anEdge)