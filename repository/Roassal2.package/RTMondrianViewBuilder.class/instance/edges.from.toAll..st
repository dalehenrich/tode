adding - edges
edges: objects from: fromBlock toAll: toAllBlock
	"- objects is the collection of from which the edges are defined from.
	- fromBlock will be called on each entity of the collection and return one edge source each time.
	- toAllBlock will be called similarly to return a collection of destination correpsonding to each source.
	Note that there is no restriction on the entities of aCollection, as long as aFromBlock returns a node and aToBlock returns a collection of nodes.
	For example:
	  aView edges: someFamixInvocations from: #sender toAll: #candidates

	Or: 
	
	| collection |
	collection := #(1 2 3 4 5 6 7 8 9 10).
	builder shape label.
	builder nodes: collection.
	builder edges: collection from: #yourself toAll: (collection select: #odd).
	builder circleLayout
		
	aToBlock should return a collection, edges will be drawn from the entity returned by aFromBlock to this collection"
	
	| es |
	self setLineShapeIfNecessary.
	es := RTEdge 
		buildEdgesFromObjects: objects 
		from: fromBlock 
		toAll: toAllBlock 
		using: shapeBuilder current
		inView: view 
		scope: (RTGroup new addAll: view elements; yourself).
		"scope: (RTGroup new addAll: topLevelNodes; yourself)."
	topLevelEdges addAll: es.
	es do: #moveBehindItsExtremities.
	^ es