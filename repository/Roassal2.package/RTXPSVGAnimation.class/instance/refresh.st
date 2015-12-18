as yet unclassified
refresh
	element doWithIndex: [ :e :i |
		e trachelShape
			curves: (self curvesFor: i);
			computePath.
		].
	element signalUpdate.

	