tests - nodes
testBasicWithNestingAndDifferentSizeOfInner
	| result pos |
	b nodes: (1 to: 2) forEach: [ :nb | 
		b shape rectangle 
			size: [ :aValue | aValue * 5 ];
			color: Color red.
		b nodes: (1 to: 3).
		b layout grid ].

	b applyLayout.
		
	result := ((Array new: 8) at: 1 put: ((15.0@20.0)); at: 2 put: ((55.0@20.0)); at: 3 put: ((7.5@7.5)); at: 4 put: ((20.0@10.0)); at: 5 put: ((12.5@27.5)); at: 6 put: ((47.5@7.5)); at: 7 put: ((60.0@10.0)); at: 8 put: ((52.5@27.5)); yourself).
	
	pos := b view canvas shapes collect: #position.
	self assert: pos asArray equals: result