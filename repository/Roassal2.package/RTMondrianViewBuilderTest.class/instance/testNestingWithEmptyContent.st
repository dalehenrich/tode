nesting
testNestingWithEmptyContent

	| elements |
	elements := builder nodes: #(1 2 ) forEach: [ :each | ].
	self assert: elements size = 2.
	self assert: elements second extent = (10 @ 10)