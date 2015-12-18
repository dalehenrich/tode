tests
testSimple

	| ds |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds interaction popupText.
	ds points: #(3 4 5 6).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.

	b build.
	
	self assert: ds maxX equals: 6.
	
	self assert: b minX equals: 0.
	self assert: b maxX equals: 6.
	self assert: b minY equals: 0.
	self assert: b maxY equals: 6.