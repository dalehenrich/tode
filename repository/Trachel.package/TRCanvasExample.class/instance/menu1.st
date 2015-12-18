menu
menu1
	"
	self new menu1
	"
	| canvas |
	canvas := TRCanvas new.
	canvas addMenu: '+ box' callback: [ canvas addShape: (TRBoxShape new color: (Color purple alpha: 0.1); from: (400 atRandom @ 400 atRandom) extent: (100 atRandom @ 100 atRandom)). canvas signalUpdate ].

	canvas addMenu: '+ circle' callback: [ canvas addShape: (TREllipseShape new color: (Color blue alpha: 0.1); from: (400 atRandom @ 400 atRandom) extent: (100 atRandom @ 100 atRandom)). canvas signalUpdate ].	
	canvas camera translateTo: 250 @ 250.
	canvas open