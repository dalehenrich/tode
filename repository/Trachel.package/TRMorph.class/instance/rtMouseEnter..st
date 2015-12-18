event-processed
rtMouseEnter: evt
	| relativePosition ev shape |
	
	relativePosition := self relativePositionFor: evt.

	shape := self shapeWithAction: TRMouseEnter forPositionInPixels: relativePosition.

	ev := TRMouseEnter new.
	ev position: relativePosition.
	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	shape announce: ev.
