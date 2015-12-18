test labels
testTitleOnAxes02

	| ds labels |
	b := RTGrapher new.
	ds := RTDataSet new.
	ds points: #(1 2).
	b add: ds.

	b axisX title: 'hello'.
	b axisY title: 'world'.
	b build.
	
	labels := b view elements elements select: [ :el | el shape class == RTLabel ].
	self assert: (labels anySatisfy: [ :e | e trachelShape text = 'hello' ]).
	self assert: (labels anySatisfy: [ :e | e trachelShape text = 'world' ]).