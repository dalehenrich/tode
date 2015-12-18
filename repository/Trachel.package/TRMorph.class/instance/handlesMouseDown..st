event handling
handlesMouseDown: anEvent
	anEvent wasHandled ifTrue:[ ^ false ]. "not interested"

	^ true