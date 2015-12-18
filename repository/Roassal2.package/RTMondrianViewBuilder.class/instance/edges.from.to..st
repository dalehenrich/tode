adding - edges
edges: objects from: fromBlock to: toBlock
	| es |
	self setLineShapeIfNecessary.
	es := RTEdge
		buildEdgesFromObjects: objects
		from: fromBlock
		to: toBlock
		using: shapeBuilder current
		inView: view
		scope:
			(RTGroup new
				addAll: topLevelNodes;
				yourself).
	topLevelEdges addAll: es.
	es do: #moveBehindItsExtremities.
	^ es