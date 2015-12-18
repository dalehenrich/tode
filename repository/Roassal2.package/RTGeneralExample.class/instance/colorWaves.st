shapes
colorWaves
	"
	self new colorWaves
	"
	"Inspired from http://haptic-data.com/toxiclibsjs/examples/ColorWaves_raphael.html"
	
	| nbOfCircles normalizer v shape mousePos |
	nbOfCircles := 25.
	
	mousePos := 50 @ 50.
	normalizer := RTMultiLinearColor new. 
	v := RTView new.
	shape := RTEllipse new 
					sizeElement: [ :el | ((el position - mousePos) r abs / 3) min: 50 ]; 
					colorElement: [ :el | 
						| va|
						va := ((((el position - mousePos) r abs / 3) min: 50) / 50).
						(normalizer level: va) alpha: 0.4 ].
	v addAll: (shape elementsOn: (1 to: nbOfCircles)).
	RTGridLayout on: v elements.
	
	v when: TRMouseMove do: [ :evt | mousePos := evt positionFromCamera. v elements do: #updateShape. v canvas signalUpdate ].
	
	v open