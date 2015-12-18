basic
testNoShape

	| nodes  node |
	nodes := builder nodes: #(10).
	self assert: nodes notNil.
	self assert: nodes size equals: 1.
	
	node := nodes first.
	self assert: node shape class == RTBox.
	self assert: node trachelShape class == TRBoxShape