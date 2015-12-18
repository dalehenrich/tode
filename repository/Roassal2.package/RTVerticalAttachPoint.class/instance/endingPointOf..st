public - hooks
endingPointOf: aRTEdge
	^ inverted 
		ifTrue: [ aRTEdge from encompassingRectangle bottomCenter ]
		ifFalse: [ aRTEdge to encompassingRectangle topCenter ].