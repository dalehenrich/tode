updating
addNodes: nodeElements
	"Initialize the meta data associated to the nodes. At that stage, position of nodes is not modified"
	nodes := nodes, nodeElements.
	nodeElements
		do: [ :e | 
			weights add: (Association key: e value: 0).
			oldPositions add: (Association key: e value: e position) ].
