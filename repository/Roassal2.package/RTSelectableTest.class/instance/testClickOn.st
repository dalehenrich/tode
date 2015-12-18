tests
testClickOn

	| e |
	e := view elements first.
	self assert: e trachelShape color ~= Color red.
	selectable clickOn: e.
	self assert: e trachelShape color equals: Color red.