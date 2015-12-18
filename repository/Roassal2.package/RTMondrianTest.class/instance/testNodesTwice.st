tests - nodes
testNodesTwice

	b nodes: #(1 2 3).
	b nodes: #(1 2 3).
	self assert: b numberOfAllFrames equals: 1.
	self assert: b topElements size equals: 6