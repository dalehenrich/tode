tests
testLocalMinAndMax

	| f |
	f := RTTimelineSet new.
	f shape rectangle color: Color green.
	f start: [ :v | v ].
	f end: [ :v | v + 1 ].
	f lineIdentifier: #yourself.
	f objects: #(1 2 3).
	
	self assert: f localMin equals: 1.
	self assert: f localMax equals: 4.