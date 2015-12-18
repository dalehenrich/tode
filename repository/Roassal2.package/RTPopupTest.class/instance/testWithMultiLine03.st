multi lines
testWithMultiLine03
	| v e  p |
	v := RTView new.

	e := (RTBox new size: 40) elementOn: 'Hello
	World
	Bonjour
	Blah'.

	v add: e.
	e @ RTPopup.
	RTPopup resetLastPopup.
	
	"Entering"
	p := RTPopup new.
	p createAndShowPopupFor: e event: TRMouseEnter new.
	self assert: v numberOfElements equals: 3.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 5.

	"Leaving"
	p removeLastPopup.

	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 0.

	
	