multi lines
testWithMultiLine02
	| v e  |
	v := RTView new.

	e := (RTBox new size: 40) elementOn: 'Hello
	World
	Bonjour
	Blah'.

	v add: e.
	e @ RTPopup.
	RTPopup resetLastPopup.
	
	"Entering"
	e announcer announce: TRMouseEnter new.
	self assert: v numberOfElements equals: 3.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 5.

	"Leaving"
	e announcer announce: TRMouseLeave new.
	self assert: v numberOfElements equals: 1.
	self assert: v canvas numberOfShapes equals: 1.
	self assert: v canvas numberOfFixedShapes equals: 0.

	
	