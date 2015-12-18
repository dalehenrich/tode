sources
exampleTwoInteractions

	| b ds |
	b := RTGrapher new.
	b extent: 300 @ 200.

	ds := RTDataSet new.
	ds interaction popupText: [ :c | 'Roassal class: ', c name ].
	ds dotShape circle color: (Color blue alpha: 0.3).
	ds points: RTShape withAllSubclasses.
	ds x: #numberOfMethods.
	ds y: #numberOfLinesOfCode.
	b add: ds.

	ds := RTDataSet new.
	ds interaction popupText: [ :c | 'Trachel class: ', c name ].
	ds dotShape circle color: (Color red alpha: 0.3).
	ds points: TRShape withAllSubclasses.
	ds x: #numberOfMethods.
	ds y: #numberOfLinesOfCode.
	b add: ds.

	b axisX; axisY.

	b build.
	^ b view