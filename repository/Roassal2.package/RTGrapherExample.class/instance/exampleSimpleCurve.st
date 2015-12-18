sources
exampleSimpleCurve

	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 300.
	
	ds := RTDataSet new.
	ds dotShape ellipse color: (Color blue alpha: 0.5).
	ds points: (0.0 to: 1.0 by: 0.05).
	ds connect.
	ds y: [ :v | v sqrt ].
	b add: ds.
	
	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
b build.
^ b view