tests
testBasicWithNoHighlight

	b objects: #(1 2 3).
	b lineBlock: [ :v | (1 to: v) ].
	b build.
	
	self assert: b view numberOfElements equals: 1 + 2 + 3