tests
testClickOnTwice

	| e |
	e := view elements first.
	selectable clickOn: e.
	selectable clickOn: e.
	self assert: e trachelShape color ~= Color red.
