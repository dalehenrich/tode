initialization
removeDraggableViewInteraction
	| a int |
	a := view canvas announcer.
	(view hasInteraction: RTDraggableView) ifTrue: [
		int := view getInteractionForClass: RTDraggableView.
		a unsubscribe: int ]
	
	
	
	