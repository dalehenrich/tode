public - hooks
startingPointOf: anEdge
	
	^ inverted 
		ifTrue: [ self attachPointFor: anEdge on: anEdge from with: (self destinationAttachPointsFor: anEdge) ]
		ifFalse: [self attachPointFor: anEdge on: (anEdge to) with: (self startingAttachPointsFor: anEdge).]