multi lines
testWithMultiLine
	| v e p |
	v := RTView new.

	e := (RTBox new size: 40) elementOn: 'Hello
	World
	Bonjour
	Blah'.

	v add: e.

	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 0.

	p := RTPopup new.
	p createAndShowPopupFor: e event: TRMouseEnter new.
	
	self assert: v numberOfElements = 3.
	self assert: v canvas numberOfShapes = 1.
	self assert: v canvas numberOfFixedShapes = 5.
