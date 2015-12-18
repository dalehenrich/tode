sources
exampleScatterPlot2

	| b ds |
	b := RTGrapher new.
	b extent: 290 @ 200.
	b interaction popup.
	
	ds := RTDataSet new.
	ds dotShape ellipse size: 15; color: (Color red alpha: 0.3).
	ds points: RTObject withAllSubclasses.
	 
	ds x: #numberOfMethods; y: #numberOfVariables.
	ds dotSize: #numberOfLinesOfCode min: 4 max: 20 using: #sqrt.
	
	b add: ds.
	b axisXWithNumberOfTicks: 4.
	b axisYWithNumberOfTicks: 4.
	b build.

	^ b view