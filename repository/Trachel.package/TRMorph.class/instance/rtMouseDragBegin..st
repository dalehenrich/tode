event-processed
rtMouseDragBegin: evt
	| relativePosition ee |
	eventBeginingDragging := evt copy.
	relativePosition := self relativePositionFor: evt.
	shapeBeingPointed := self shapeWithAction: TRMouseDragging forPositionInPixels: relativePosition.

	evt yellowButtonChanged
		ifTrue: [ ee := TRMouseRightDragStart new ].
	evt redButtonChanged
		ifTrue: [ ee := TRMouseLeftDragStart new ].
	evt blueButtonChanged
		ifTrue: [ ee := TRMouseDragStart new ].
		
	ee shape: shapeBeingPointed.
	ee position: relativePosition.
	ee canvas: trachelCanvas.
	ee morph: self.
	shapeBeingPointed announce: ee.