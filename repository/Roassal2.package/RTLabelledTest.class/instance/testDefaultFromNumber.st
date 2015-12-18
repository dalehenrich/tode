tests
testDefaultFromNumber

	| v el |
	v := RTView new.
	el := (RTBox new size: 30) elementOn: 5.
	v add: el.
	
	el @ RTLabelled.
	self assert: v numberOfElements = 1.
	self assert: v canvas numberOfShapes = 2.
	
	self assert: v canvas shapes last class == TRLabelShape.
	self assert: v canvas shapes last position x = 0.
	self assert: v canvas shapes last position y < 10.
	self assert: v canvas shapes last text = '5'.