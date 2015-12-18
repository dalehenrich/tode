sources
exampleRadialTree
| b |
	b := RTMondrian new.
	b shape circle size: 10.
	b nodes: (1 to: 100).
	b edges connectFrom: [ :v | v // 2 ].
	b layout radialTree.
	b build.
	^ b view