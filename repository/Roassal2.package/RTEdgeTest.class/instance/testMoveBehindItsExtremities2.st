pushing back
testMoveBehindItsExtremities2

	| v e1 e2 |
	v := RTView new.

	e1 := RTBox element.
	e2 := RTBox element.
	v add: e1; add: e2.

	edge := RTArrowedLine edgeFrom: e1 to: e2.

	v add: edge.
	self assert: (edge trachelShape shapes allSatisfy: [ :t | t canvas notNil ]).

	e1 translateTo: 50 @ 50. 
	edge moveBehindItsExtremities.

	self assert: (edge trachelShape shapes allSatisfy: [ :t | t canvas notNil ]).
	self assert: edge trachelShape canvas notNil.
	self assert: edge trachelShape canvas == v canvas.
	
	