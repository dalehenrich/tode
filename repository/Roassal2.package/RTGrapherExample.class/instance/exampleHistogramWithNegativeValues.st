sources
exampleHistogramWithNegativeValues

	| data b ds |
	data := (1 to: 20) collect: [ :v | 10 atRandom - 5 ].
	 
	b := RTGrapher new.

	b extent: 300 @ 200.

	ds := RTStackedDataSet new.
	ds interaction popup.
	ds points: data.
	ds barShape width: 8; 
	      color: (Color green alpha: 0.3);
	     if: [:value | value < 0 ] fillColor: (Color red alpha: 0.3).
	b add: ds.
	b build.
	^ b view