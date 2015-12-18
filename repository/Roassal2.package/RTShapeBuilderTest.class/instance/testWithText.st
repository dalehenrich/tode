withText
testWithText

	| v el |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder circle 
				size: 50; 
				fillColor: (Color purple alpha: 0.3);
				withText.
	el := builder elementOn: 'hello'.
	v add: el.
	
	self assert: el shape class == RTCompositeShape.
	