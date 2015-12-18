tests
testBasic02

	| b ds deco labels |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds points: #(2 3 4 5 6).
	b add: ds.

	deco := RTVerticalAllValuesDecorator new.
	b addDecorator: deco.

	b axisX noTick; noLabel.
	b axisY noTick; noLabel.
	b build.
	
	labels := b view canvas shapes select: [ :s | s class == TRLabelShape ].
	self assert: labels size equals: 5.