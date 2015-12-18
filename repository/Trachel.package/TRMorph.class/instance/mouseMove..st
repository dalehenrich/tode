event handling
mouseMove: evt
	
	evt anyButtonPressed
		ifTrue: [ self rtMouseDragging: evt ] 
		ifFalse: [ self rtMouseMoving: evt ].
	evt wasHandled: true.
	^ true