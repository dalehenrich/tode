events-processing
handleMouseMove: anEvent
	super handleMouseMove: anEvent.
	self rtMouseMoving: anEvent.