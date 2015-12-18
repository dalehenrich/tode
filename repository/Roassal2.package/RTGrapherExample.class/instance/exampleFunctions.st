sources
exampleFunctions


	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 300.
	
	(Array with: Color red with: Color blue with: Color green with: Color yellow) doWithIndex: [ :color :i |
		ds := RTDataSet new.
		ds dotShape ellipse size: 0.
		ds points: (0.0 to: 10.0 by: 0.1).
		ds connectColor: color.
		ds x: #yourself.
		ds y: [ :v | v raisedTo: i ].
		b add: ds.
	].
	
	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
b build.

^ b view