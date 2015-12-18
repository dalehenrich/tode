public - hooks
endingPointOf: aRTEdge
	^ inverted 
		ifTrue: [ aRTEdge from encompassingRectangle rightCenter ]
		ifFalse: [ aRTEdge to encompassingRectangle leftCenter ].
