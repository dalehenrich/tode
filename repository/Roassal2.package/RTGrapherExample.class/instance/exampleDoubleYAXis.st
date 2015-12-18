sources
exampleDoubleYAXis

	| b ds |
	b := RTDoubleGrapher new.
	b extent: 300 @ 200.
	
	ds := RTStackedDataSet new.
	ds points: #(4 3 2 2).
	ds barShape width: 40.
	b add: ds.
	
	ds := RTStackedDataSet new.
	ds points: (10 to: 13).
	ds dotShape color: Color blue.
	ds connectColor: Color red.
	b addRight: ds.
	
	b axisX noLabel.
	b axisYRight color: Color red.
	b build.

	^ b view