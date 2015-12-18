sources
exampleSimpleCurve2

	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 300.
	
	ds := RTStackedDataSet new.
	ds dotShape ellipse color: (Color blue alpha: 0.5).
	ds points: (RTObject withAllSubclasses sortedAs: #numberOfMethods).
	ds connect.
	ds y: #numberOfMethods.
	b add: ds.
	
	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
b build.
^ b view