sources
exampleStackingX3

	| b nbOfCurves normalizer |
	b := RTGrapher new.
	b extent: 400 @ 200.
	
	nbOfCurves := 3.
	normalizer := RTMultiLinearColorForIdentity new numberOfColors: (nbOfCurves).
	1 to: nbOfCurves do: [ :i |
		| data ds |
		ds := RTStackedDataSet new.
		data := (100 to: 1 by: -1) collect: #atRandom.
		ds dotShape ellipse size: 0.
		ds points: data.
		ds connectColor: (normalizer rtValue: i).
		b add: ds.
	].

	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
b build.

^ b view