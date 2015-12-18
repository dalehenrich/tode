event-processed
rtMouseClick: evt
	| relativePosition ev  shape |
	relativePosition := self relativePositionFor: evt.	
	evt yellowButtonChanged
		ifTrue: [ ev := TRMouseRightClick new ].
	evt redButtonChanged
		ifTrue: [ ev := TRMouseLeftClick new ].
	evt blueButtonChanged
		ifTrue: [ ev := TRMouseClick new ].

	shape := self shapeWithAction: TRMouseClick forPositionInPixels: relativePosition.
	ev commandKeyPressed: evt commandKeyPressed.
	ev controlKeyPressed: evt controlKeyPressed.
	ev shiftKeyPressed: evt shiftPressed.
	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	ev position: (trachelCanvas camera fromPixelToSpace: relativePosition).
	shape announce: ev.
	