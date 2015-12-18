tests
testAddedInCanvas

	| es shape edge |
	v := RTView new.
	es := RTBox new elementsOn: (1 to: 2).
	es second translateBy: 30 @ 30.
	es @ RTDraggable.
	v addAll: es.
	shape := RTMultiLine new orthoHorizontal.
	edge := shape edgeFrom: es first to: es second.
	v add: edge.

	self assert: v canvas numberOfShapes equals: 5.
	edge pushBack.
	self assert: v canvas numberOfShapes equals: 5.

	edge trachelShape pushFront.
	self assert: v canvas numberOfShapes equals: 5.

	v canvas push: edge trachelShape behind: es first trachelShape.
	self assert: v canvas numberOfShapes equals: 5.
