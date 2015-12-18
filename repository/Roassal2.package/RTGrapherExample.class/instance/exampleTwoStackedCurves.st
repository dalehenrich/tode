sources
exampleTwoStackedCurves

	| b ds |
	b := RTGrapher new.
	b extent: 200 @ 200.
	
	ds := RTStackedDataSet new.
	ds points: #(0 1 2 3 10 20).
	ds connectUsing: (RTLine new color: Color blue).
	b add: ds.
	
	ds := RTStackedDataSet new.
	ds points: #(0 10 20 30).
	ds connectUsing: (RTLine new color: Color red).
	b add: ds.
	
	b axisXWithNumberOfTicks: 3.
	b axisYWithNumberOfTicks: 4.
b build.
^ b view