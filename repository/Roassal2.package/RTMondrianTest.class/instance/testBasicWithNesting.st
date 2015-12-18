tests - nodes
testBasicWithNesting
	| result pos |
	b nodes: (1 to: 2) forEach: [ :nb | 
		b shape rectangle color: Color red.
		b nodes: (1 to: 3) ].

	b applyLayout.
	
	result := ((Array new: 8) at: 1 put: ((22.5@7.5)); at: 2 put: ((77.5@7.5)); at: 3 put: ((8.0@8.0)); at: 4 put: ((23.0@8.0)); at: 5 put: ((38.0@8.0)); at: 6 put: ((63.0@8.0)); at: 7 put: ((78.0@8.0)); at: 8 put: ((93.0@8.0)); yourself).
	
	pos := b view canvas shapes collect: #position.
	self assert: pos asArray equals: result