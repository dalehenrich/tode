tests
testRemovingLabelledElement

	| v el |
	v := RTView new.
	el := (RTBox new size: 30) elementOn: 'hello world'.
	v add: el.
	
	el @ RTLabelled.
	self assert: v numberOfElements = 1.
	self assert: v canvas numberOfShapes = 2.
	
	el remove.
	self assert: v numberOfElements equals: 0.
	self assert: v canvas numberOfShapes equals: 0.
