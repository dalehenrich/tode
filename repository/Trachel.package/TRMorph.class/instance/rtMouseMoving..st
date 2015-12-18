event-processed
rtMouseMoving: evt

	| relativePosition ev shape |
	relativePosition := self relativePositionFor: evt.	
	shape := self shapeWithAction: TRMouseMove forPositionInPixels: relativePosition.

	ev := TRMouseMove new.
	ev position: relativePosition.
	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	shape announce: ev