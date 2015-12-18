events-processing
handleMouseOver: anEvent

	| currentElement event |
	anEvent wasHandled ifTrue:[ ^ self ]. "not interested"
	"Do nothing if we are dragging"
	self isDragging ifTrue: [ ^ self ].
	 
	shapeBeingPointed ifNil: [ shapeBeingPointed := self shapeForEvent: anEvent ].
	
	currentElement := self shapeForEvent: anEvent.
	(currentElement ~~ shapeBeingPointed)
		ifTrue: [ 
			event := TRMouseLeave new.
			event morph: self.
			event canvas: trachelCanvas.
			event position: (self relativePositionFor: anEvent).
			event shape: shapeBeingPointed.

			shapeBeingPointed announce: event.
			shapeBeingPointed := currentElement.
			self rtMouseEnter: anEvent ].
