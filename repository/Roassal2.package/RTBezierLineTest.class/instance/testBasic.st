tests
testBasic

	| v shape  edge els |
	v := RTView new.
	shape := RTEllipse new size: 10; color: (Color purple alpha: 0.3).
	els := (shape elementsOn: (1 to: 4)) @ RTDraggable.
	v addAll: els .
	RTHorizontalLineLayout on: v elements.

	edge := (RTBezierLine new controllingElements: v elements) edgeFrom: els first to: els last.
	v add: edge.
	
	self assert: (els first connectedEdges includes: edge).
	self assert: (els second connectedEdges includes: edge).
	self assert: (els third connectedEdges includes: edge).
	self assert: (els fourth connectedEdges includes: edge).