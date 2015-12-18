resizing
testResizing

	| e1 e2 g |
	e1 := (RTBox new width: 30; height: 20) element.
	e2 := (RTEllipse new width: 30; height: 20) element.
	g := RTGroup new.
	g add: e1; add: e2.
	TRConstraint move: e2 below: e1.
	
	self assert: g encompassingRectangle extent equals: ((30.0 @ 40.0)).
	self assert: g encompassingRectangle equals: ((-15.0 @ -10.0) corner: (15.0 @ 30.0)).
	
	"We resize the group"
	g width: 15.
	self assert: g encompassingRectangle extent equals: ((15 @ 40.0)).
	self assert: g encompassingRectangle equals: ((-15.0 @ -10.0) corner: (0 @ 30.0)).
	
	g width: 30.
	self assert: g encompassingRectangle extent equals: ((30.0 @ 40.0)).
	self assert: g encompassingRectangle equals: ((-15.0 @ -10.0) corner: (15.0 @ 30.0)).
	