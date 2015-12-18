sources
exampleCircle

	| view shape el |
	view := RTView new.
	shape := RTEllipse new color: (Color purple alpha: 0.2); size: 80.
	100 timesRepeat: [ 
		el := shape element translateTo: 500 atRandom @ 500 atRandom.
		el @ RTDraggable.
		view add: el. 
		view addAnimation: (RTLinearMove to: 500 atRandom @ 500 atRandom during: 2 on: el).
	].	
	^ view
