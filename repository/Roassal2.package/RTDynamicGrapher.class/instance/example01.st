examples
example01

	"
	self new example01
	"

	| b |
	b := RTDynamicGrapher new.
	b minX: -200; maxX: 200.
	b minY: 0; maxY: 200.

	b x: #x; y: #y.
	 
	b shape circle color: (Color red alpha: 0.3).
	b view addMenu: '+ 1' callback: [ b add: 400 atRandom - 200 @ 200 atRandom ].
	^ b  