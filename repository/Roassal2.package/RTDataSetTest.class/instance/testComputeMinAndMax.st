tests
testComputeMinAndMax

	| b ds |
	b := RTGrapher new.

	ds := RTDataSet new.
	ds points: #(1 2 3).
	ds x: #yourself.
	ds y: #yourself.
	b add: ds.

	b maxY: 5.
	b build.
	
	self assert: b centralPoint equals: 0 @ 0.
	self assert: ds minX equals: 0.
	self assert: ds maxX equals: 3.
	
	self assert: b maxY equals: 5.
	self assert: ds minY equals: 0.
	self assert: ds maxY equals: 5.