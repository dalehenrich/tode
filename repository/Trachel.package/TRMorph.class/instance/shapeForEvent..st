event-processed
shapeForEvent: anEvent	
	^ self shapeWithActionForPositionInPixels: (self relativePositionFor: anEvent)