sources
exampleMethodSize


	| b classes normalizer |
	b := RTGrapher new.
	b extent: 400 @ 200.
	
	classes := RTShape withAllSubclasses.
	normalizer := RTMultiLinearColorForIdentity new objects: classes.
	classes do: [ :c |
		| ds data |
		data := ((c rtmethods reverseSortedAs: #numberOfLinesOfCode ) collect: [ :m | m numberOfLinesOfCode ]).
		ds := RTStackedDataSet new.
		ds dotShape ellipse size: 0.
		ds points: data.
		ds connectColor: (normalizer rtValue: c).
		ds y: #yourself.
		b add: ds.
	].

	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.

	b build.
^ b view