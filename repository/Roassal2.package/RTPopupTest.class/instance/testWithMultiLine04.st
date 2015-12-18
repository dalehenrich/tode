multi lines
testWithMultiLine04
	| v e  p secondElement firstElement |
	v := RTView new.

	e := (RTBox new size: 40) elementOn: 'Hello
	World
	Bonjour
	Blah'.

	v add: e.
	e @ RTPopup.
	
	"Entering"
	p := RTPopup new.
	RTPopup resetLastPopup.
	p createAndShowPopupFor: e event: TRMouseEnter new.
	self assert: v numberOfElements equals: 3.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 5.

	"Leaving"
	firstElement := RTPopup lastPopup first.
	secondElement := RTPopup lastPopup second.
	self assert: secondElement shape class equals: RTLabel.
	self deny: secondElement isFixed.
	firstElement remove.
	secondElement remove.

	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 0.

	
	