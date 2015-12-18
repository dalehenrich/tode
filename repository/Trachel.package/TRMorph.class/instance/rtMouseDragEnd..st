event-processed
rtMouseDragEnd: evt

	| ee relativePosition |
	relativePosition := self relativePositionFor: evt.
	ee := TRMouseDragEnd new.
	ee shape: shapeBeingPointed.
	ee canvas: trachelCanvas.
	ee morph: self.
	ee position: relativePosition.
	shapeBeingPointed announce: ee.
	
	eventBeginingDragging := nil.
	shapeBeingPointed := nil