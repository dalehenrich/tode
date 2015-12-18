public - hooks
startingPointOf: aRTEdge
	^ inverted 
		ifTrue: [ aRTEdge to encompassingRectangle leftCenter ] 
		ifFalse: [ aRTEdge from encompassingRectangle rightCenter]
