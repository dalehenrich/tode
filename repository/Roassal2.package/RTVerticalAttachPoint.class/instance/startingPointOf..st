public - hooks
startingPointOf: aRTEdge
	^ inverted 
		ifTrue: [ aRTEdge to encompassingRectangle topCenter ]
		ifFalse: [ aRTEdge from encompassingRectangle bottomCenter ].
