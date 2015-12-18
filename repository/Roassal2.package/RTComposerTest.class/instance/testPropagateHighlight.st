tests
testPropagateHighlight

	| e1 e2 e3 |
	e1 := (RTBox new color: Color gray) elementOn: 1.
	composer view add: e1.
	composer propagateHighlight. 
	composer group: #first.
	
	e2 := (RTEllipse new color: Color gray) elementOn: 1.
	composer view add: e2.
	composer group: #second.
	
	e3 := (RTBox new color: Color gray) elementOn: 1.
	composer view add: e3.
	composer propagateHighlight.
	composer group: #third.
	
	
	composer move: #second onTheRightOf: #first.
	composer move: #third onTheRightOf: #second.
	
	e1 announce: TRMouseEnter.
	self assert: e1 trachelShape color ~~ Color gray.
	self assert: e2 trachelShape color ~~ Color gray.
	self assert: e3 trachelShape color ~~ Color gray.
	e1 announce: TRMouseLeave.
	
	self assert: e1 trachelShape color == Color gray.
	self assert: e2 trachelShape color == Color gray.
	self assert: e3 trachelShape color == Color gray.

	e3 announce: TRMouseEnter.
	self assert: e1 trachelShape color ~~ Color gray.
	self assert: e2 trachelShape color ~~ Color gray.
	self assert: e3 trachelShape color ~~ Color gray.
	e3 announce: TRMouseLeave.

	e2 announce: TRMouseEnter.
	self assert: e1 trachelShape color == Color gray.
	self assert: e2 trachelShape color == Color gray.
	self assert: e3 trachelShape color == Color gray.
	e2 announce: TRMouseLeave.
