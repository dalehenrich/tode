tests
testValue
	| shape e obj |
	obj := #(1 2 3 4 5).
	shape := RTSparkline new values: [ :tuple | tuple + 10 ].
	e := shape elementOn: obj.
	self assert: (shape valuesFor: e) = (obj + 10).
	
	self assert: (shape heightFor: obj) equals: 5.
	self assert: (shape widthFor: obj) equals: 5.
	