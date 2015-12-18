public - hooks
endingPointOf: anEdge
	^ (super endingPointOf: anEdge) + (self offsetNormalFor: anEdge)