event-processed
rtMouseDragging: evt
	| step relativePosition event  |
	eventBeginingDragging ifNil: [ ^ self ].
	relativePosition := self relativePositionFor: evt.
	step := evt position - eventBeginingDragging position.

	shapeBeingPointed ifNil: [  
			shapeBeingPointed := self shapeWithAction: TRMouseDragging forPositionInPixels: relativePosition ].
	
	event := TRMouseDragging new 
				morph: self;
				shape: shapeBeingPointed;
				step: step; 
				yourself.

"	event commandKeyPressed: evt commandKeyPressed.
	event controlKeyPressed: evt controlKeyPressed.
	event shiftKeyPressed: evt shiftPressed.				
"
	event position: relativePosition.
	event canvas: trachelCanvas.
	event morph: self.
	shapeBeingPointed announce: event.

	eventBeginingDragging := evt copy.