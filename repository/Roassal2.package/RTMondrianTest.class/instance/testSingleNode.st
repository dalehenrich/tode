tests - nodes
testSingleNode

	b node: 10.
	b build.
	
	self assert: b view numberOfElements equals: 1.
	self assert: b view elements anyOne position equals: 2.5 @ 2.5.