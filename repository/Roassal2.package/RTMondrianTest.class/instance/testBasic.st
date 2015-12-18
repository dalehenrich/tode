tests - nodes
testBasic
	| pos someNodes |
	someNodes := b nodes: (1 to: 5).
	b applyLayout.
	
	pos := b view canvas shapes collect: #position.
	self assert: pos asArray equals: ((Array new: 5) at: 1 put: ((2.5@2.5)); at: 2 put: ((17.5@2.5)); at: 3 put: ((32.5@2.5)); at: 4 put: ((47.5@2.5)); at: 5 put: ((62.5@2.5)); yourself).
	
	self assert: someNodes equals: b view elements