adding - edges
edgesFrom: fromBlock
	"The message edgesFrom: defines one edge per node. For each node that has been added in the visualization, an edge is defined between this node and a node lookup from the provided block."
	
	^ self edges: self topLevelObjects from: fromBlock to: #yourself
