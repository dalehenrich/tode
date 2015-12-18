tests - nodes
testBasic2
	| someNodes |
	someNodes := b nodes: (1 to: 5).
	b build.
	
	self assert: b view numberOfElements equals: 5