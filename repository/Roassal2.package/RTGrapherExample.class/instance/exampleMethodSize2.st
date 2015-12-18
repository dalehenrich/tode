sources
exampleMethodSize2

	| b classes normalizer |
	b := RTGrapher new.
	b extent: 400 @ 200.
	
	classes := RTShape withAllSubclasses.
	normalizer := RTMultiLinearColorForIdentity new objects: classes.
	classes do: [ :c |
		| data ds |
		ds := RTStackedDataSet new.
		data := (c rtmethods reverseSortedAs: #numberOfLinesOfCode ).
		
		ds interaction popup.
		ds dotShape rectangle color: (normalizer rtValue: c).
		ds points: data.
		ds connectColor: (normalizer rtValue: c).
		ds y: #numberOfLinesOfCode.
		b add: ds.
	].

	b axisX.
	b axisY.
b build.
^ b view