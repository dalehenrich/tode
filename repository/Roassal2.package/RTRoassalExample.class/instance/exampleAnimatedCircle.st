sources
exampleAnimatedCircle
	| nbOfCircles  v shape mousePos |
	nbOfCircles := 25.
	
	mousePos := 50 @ 50.
	v := RTView new.
	shape := RTEllipse new sizeElement: [ :el | ((el position - mousePos) r abs / 3) min: 50 ]; color: (Color blue alpha: 0.4).
	v addAll: (shape elementsOn: (1 to: nbOfCircles)).
	RTGridLayout on: v elements.
	
	v when: TRMouseMove do: [ :evt |  Transcript show: evt positionFromCamera printString; cr . mousePos := evt positionFromCamera. v elements do: #updateShape. v canvas signalUpdate ].
	

	^ v