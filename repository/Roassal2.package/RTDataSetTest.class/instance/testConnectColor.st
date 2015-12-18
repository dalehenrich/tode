tests
testConnectColor

	| b ds |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds connectColor: Color blue.
	ds points: #(1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.

	b build.
	
	self assert: b view numberOfEdges equals: 4.
	self assert: b view edges last trachelShape color equals: Color blue.