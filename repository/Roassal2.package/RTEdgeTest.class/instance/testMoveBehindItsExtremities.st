pushing back
testMoveBehindItsExtremities

	| view |
	view := RTView new.
	view add: el1; add: el2; add: edge.
	edge moveBehindItsExtremities.
	self assert: view canvas shapes = 
		(Array with: edge trachelShape with: el1 trachelShape with: el2 trachelShape)