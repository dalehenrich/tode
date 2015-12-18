resizing
testResizingAndMinimumSize

	| e1 e2 g |
	e1 := (RTBox new width: 30; height: 20) element.
	e2 := (RTEllipse new width: 30; height: 20) element.
	g := RTGroup new.
	g add: e1; add: e2.
	TRConstraint move: e2 below: e1.
	
	"We resize the group"
	g width: -4.
	self assert: g encompassingRectangle extent equals: ((1 @ 40.0)).
