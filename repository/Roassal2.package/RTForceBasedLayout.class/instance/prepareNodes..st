accessing
prepareNodes: nodeElements
	"Initialize the meta data associated to the nodes. At that stage, position of nodes is not modified"
	weights := Dictionary new.
	oldPositions := Dictionary new.
	nodes := nodeElements.
	nodes
		do: [ :e | 
			weights add: (Association key: e value: 0).
			oldPositions add: (Association key: e value: e position) ].
	edges
		do: [ :e | 
			| from to |
			from := e from.
			to := e to.
			weights at: from put: (weights at: from) + 1.
			weights at: to put: (weights at: to) + 1 ].
	alpha := 0.1