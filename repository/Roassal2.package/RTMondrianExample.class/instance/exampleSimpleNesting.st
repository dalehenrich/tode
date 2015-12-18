sources
exampleSimpleNesting

	| b |
	b := RTMondrian new.
	
	b nodes: (1 to: 20) forEach: [ :each |
		b nodes: (1 to: (each)).
		b layout grid.
	].
	b build.
	^ b view