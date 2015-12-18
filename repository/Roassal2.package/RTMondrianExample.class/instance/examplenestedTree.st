sources
examplenestedTree

	| b |
	b := RTMondrian new.
	
	b nodes: (1 to: 100 by: 10) forEach: [ :each |
		b nodes: (1 to: each).
		b edges connectFrom: [ :v | v // 2 ].
		b layout cluster.
	].
	b layout grid.
	b build.
	^ b view 