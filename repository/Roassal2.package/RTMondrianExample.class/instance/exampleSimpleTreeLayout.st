sources
exampleSimpleTreeLayout


| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle size: 10; borderColor: Color black.
	b nodes: (1 to: 100).
	b edges: (1 to: 100) from: [ :v | v // 2 ] to: #yourself.
	b treeLayout.
	b build.
	^ b view