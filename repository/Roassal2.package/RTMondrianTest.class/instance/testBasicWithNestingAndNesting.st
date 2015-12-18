tests - nodes
testBasicWithNestingAndNesting
	| result pos |
	b nodes: (1 to: 2) forEach: [ :nb | 
		b shape rectangle color: Color red.
		b nodes: (1 to: 3) forEach: [ :nb2 |
			b shape rectangle color: Color blue.
		b nodes: (1 to: 3) 
		].
		b layout grid ].

	b build.

	result := ((Array new: 26) at: 1 put: ((52.5@22.5)); at: 2 put: ((167.5@22.5)); at: 3 put: ((28.0@13.0)); at: 4 put: ((78.0@13.0)); at: 5 put: ((28.0@33.0)); at: 6 put: ((13.5@13.5)); at: 7 put: ((28.5@13.5)); at: 8 put: ((43.5@13.5)); at: 9 put: ((63.5@13.5)); at: 10 put: ((78.5@13.5)); at: 11 put: ((93.5@13.5)); at: 12 put: ((13.5@33.5)); at: 13 put: ((28.5@33.5)); at: 14 put: ((43.5@33.5)); at: 15 put: ((143.0@13.0)); at: 16 put: ((193.0@13.0)); at: 17 put: ((143.0@33.0)); at: 18 put: ((128.5@13.5)); at: 19 put: ((143.5@13.5)); at: 20 put: ((158.5@13.5)); at: 21 put: ((178.5@13.5)); at: 22 put: ((193.5@13.5)); at: 23 put: ((208.5@13.5)); at: 24 put: ((128.5@33.5)); at: 25 put: ((143.5@33.5)); at: 26 put: ((158.5@33.5)); yourself).
	
	pos := b view canvas shapes collect: #position.
	self assert: pos asArray equals: result