tests
testDefault02
	b := RTGrapher new.
	b maxX: 2.
	b minX: -2.
	b maxY: 5.
	b minY: -1.
	self assert: b minX equals: -2.
	self assert: b maxX equals: 2.
	self assert: b minY equals: -1.
	self assert: b maxY equals: 5.
