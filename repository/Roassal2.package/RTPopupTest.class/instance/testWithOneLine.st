tests
testWithOneLine


	| v e p |
	v := RTView new.

	e := (RTBox new size: 40) elementOn: 'Hello'.

	v add: e.

	self assert: v numberOfElements = 1.
	self assert: v canvas numberOfShapes = 1.

	p := RTPopup new.
	RTPopup resetLastPopup.
	p createAndShowPopupFor: e event: TRMouseEnter new.
	
	self assert: v numberOfElements = 3.
	self assert: v canvas numberOfShapes = 1.
	self assert: v canvas numberOfFixedShapes = 2.
