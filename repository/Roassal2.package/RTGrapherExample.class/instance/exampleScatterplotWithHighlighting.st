sources
exampleScatterplotWithHighlighting
	| b ds |
	b := RTGrapher new.
	b extent: 290 @ 200.
	
	ds := RTDataSet new.
	ds interaction popup.
	ds dotShape ellipse size: 15; color: (Color red alpha: 0.3).
	ds points: RTObject withAllSubclasses.
	ds x: #numberOfMethods; y: #numberOfVariables.
	ds dotSize: #numberOfLinesOfCode min: 4 max: 20 using: #sqrt.
	ds highlightIf: [ :c | (c numberOfLinesOfCode > 2000) or: [ c numberOfVariables > 10 ] ] using: #name.
	b add: ds.
	
	b axisX 
			numberOfTicks: 4;
			title: 'LOC'.

	b axisY 
			numberOfTicks: 4;
			title: 'NOM'.
	
	b build.
	^ b view