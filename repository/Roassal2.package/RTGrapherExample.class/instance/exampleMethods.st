sources
exampleMethods


	| methods trachelMethods b ds |
	methods := Collection withAllSubclasses flatCollect: #rtmethods.
	trachelMethods := TRObject withAllSubclasses flatCollect: #rtmethods.

	b := RTGrapher new.
	b extent: 200 @ 200.

	"Data set 1"
	ds := RTDataSet new.
	ds interaction popup.
	ds dotShape circle color: (Color red alpha: 0.3).
	ds points: methods.
	ds x: #numberOfLinesOfCode.
	ds y: [ :m | m getSource size ].
	b add: ds.

	"Data set 2"
	ds := RTDataSet new.
	ds interaction popup.
	ds dotShape circle color: (Color blue alpha: 0.3).
	ds points: trachelMethods.
	ds x: #numberOfLinesOfCode.
	ds y: [ :m | m getSource size ].
	b add: ds.

	b axisX withThousandsSeparator; title: 'LOC'.
	b axisY noDecimal; title: 'Size'.
	b build.

	^ b view