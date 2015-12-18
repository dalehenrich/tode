edges
buildEdges
	| bool |
	bool := lineShape shape attachPoint isInverted.
	lineShape verticalAttachPoint.
	lineShape shape attachPoint inverted: bool.
	RTEdge buildEdgesFromObjects: 
		classes from: self superclass to: #yourself using: lineShape shape inView: view