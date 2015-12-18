sources
example08

	| b |
	b := RTTreeMapBuilder new.
	b shape fillColor: Color random.
	
	b from: (1 to: 5) using: [#()].
	b weight: #yourself.
	b build.
	^ b view