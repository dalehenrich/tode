updating
addEdges: someEdges
	someEdges
		do: [ :e | 
			| from to |
			from := e from.
			to := e to.
			weights at: from put: (weights at: from) + 1.
			weights at: to put: (weights at: to) + 1 ].
	edges := edges, someEdges