event-processed
rtKeyStroke: evt
	| relativePosition ev  shape |
	
	(evt commandKeyPressed and: [ evt keyCharacter = $w ]) ifTrue: [ self owner delete ].
	relativePosition := self relativePositionFor: evt.
	
	ev := TRKeyDown new 
				keyValue: evt keyValue;
				keyCombination: evt asKeyCombination;
				yourself.
	shape := self shapeWithAction: TRKeyDown forPositionInPixels: relativePosition.

	ev shape: shape.
	ev morph: self.
	ev canvas: trachelCanvas.
	ev position: (trachelCanvas camera fromPixelToSpace: relativePosition).

	shape announce: ev.
