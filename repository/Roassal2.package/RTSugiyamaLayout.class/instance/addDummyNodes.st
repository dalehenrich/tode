private
addDummyNodes
	
	| layer layerNr |
	connections := RTIdentityMatrix new.
	self edgesDo:
			[:edge | 
			| a b span fromNode toNode |
			"edge hints removeAll."
			a := layerNrs at: edge from.
			b := layerNrs at: edge to.
			span := (a - b) abs.
			span = 1
				ifTrue:
					[connections
						at: edge from
						at: edge to
						put: true].	"Normal case where nodes are in adjacent layers"
			fromNode := edge from.
			[span > 1]
				whileTrue:
					[span := span - 1.
					layerNr := b + span.
					layer := layers at: layerNr.
					toNode := RTDummyNode
						on: edge
						slot: a - span.
					layer add: toNode.
					layerNrs at: toNode put: layerNr.
					connections at: fromNode at: toNode put: true.
					fromNode := toNode].
			(a - b) abs > 1
				ifTrue:
					[connections
						at: fromNode
						at: edge to
						put: true]]