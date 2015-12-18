tests - nodes
testBasicWithNestingAndGridLayout
	| result pos |
	b nodes: (1 to: 2) forEach: [ :nb | 
		b shape rectangle color: Color red.
		b nodes: (1 to: 3).
		b layout grid ].

	b build.
	
	result := ((Array new: 8) at: 1 put: ((12.5@12.5)); at: 2 put: ((47.5@12.5)); at: 3 put: ((8.0@8.0)); at: 4 put: ((18.0@8.0)); at: 5 put: ((8.0@18.0)); at: 6 put: ((43.0@8.0)); at: 7 put: ((53.0@8.0)); at: 8 put: ((43.0@18.0)); yourself).
	
	pos := b view canvas shapes collect: #position.
	self assert: pos asArray equals: result