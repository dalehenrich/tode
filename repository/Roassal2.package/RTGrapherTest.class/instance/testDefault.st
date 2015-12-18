tests
testDefault
	b := RTGrapher new.
	self assert: b minX equals: 0.
	self assert: b maxX equals: 0.
	self assert: b minY equals: 0.
	self assert: b maxY equals: 0.
	
	self assert: b datasets isEmpty.
	self assert: b decorators isEmpty.