event-processed
rtMouseDoubleClick: evt
	| relativePosition ev  shape |
	relativePosition := self relativePositionFor: evt.	
	evt yellowButtonChanged
		ifTrue: [ ev := TRMouseDoubleRightClick new ].
	evt redButtonChanged
		ifTrue: [ ev := TRMouseDoubleLeftClick new ].
	evt blueButtonChanged
		ifTrue: [ ev := TRMouseDoubleClick new ].

	shape := self shapeWithAction: TRMouseDoubleClick forPositionInPixels: relativePosition.
	ev commandKeyPressed: evt commandKeyPressed.
	ev controlKeyPressed: evt controlKeyPressed.
	ev shiftKeyPressed: evt shiftPressed.
	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	ev position: (trachelCanvas camera fromPixelToSpace: relativePosition).
	shape announce: ev.
	