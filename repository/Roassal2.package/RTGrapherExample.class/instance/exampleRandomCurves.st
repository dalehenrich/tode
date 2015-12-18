sources
exampleRandomCurves

| b ds |
b := RTGrapher new.
b extent: 300 @ 200.

5 timesRepeat: [ 
	ds := RTStackedDataSet new.
	ds noDot.
	ds points: ((1 to: 500) collect: [ :i | 50 atRandom - 25 ]) cumsum.
	ds connectColor: Color green.
	b add: ds.
].
b axisX; axisY.
b build.
^ b view