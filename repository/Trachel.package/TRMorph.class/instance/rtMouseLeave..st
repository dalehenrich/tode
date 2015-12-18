event-processed
rtMouseLeave: evt
	| position ev shape |
	
	position := self relativePositionFor: evt.
	shape := self shapeWithAction: TRMouseLeave forPositionInPixels: position.
	ev := TRMouseLeave new.
	ev position: position.
	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	shape announce: ev
