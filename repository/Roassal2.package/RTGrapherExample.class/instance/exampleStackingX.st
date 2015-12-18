sources
exampleStackingX

	| b ds |
	b := RTGrapher new.
	b extent: 400 @ 300.
	
	ds := RTStackedDataSet new.
	ds points: #( 5 6 7 ).
	ds connectColor: Color red.
	ds y: #yourself.
	b add: ds.
	
	ds := RTStackedDataSet new.
	ds points: #(1 7 10 4).
	ds connectColor: Color blue.
	ds y: #yourself.
	b add: ds.
	

	b axisXWithNumberOfTicks: 4.
	b axisYWithNumberOfTicks: 4.
	b build.
 	^ b view