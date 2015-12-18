tests - nodes
testSingleNodeForIt

	b node: 10 forIt: [ b node: 5 ].
	b build.
	
	self assert: b view numberOfElements equals: 2.
	self assert: b view elements first position equals: 7.5 @ 7.5.
	self assert: b view elements second position equals: 8.0 @ 8.0.