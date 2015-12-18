withText
testWithTextAndTranslation

	| v el |
	v := RTView new.
	builder := RTShapeBuilder new.
	builder circle 
				size: 50; 
				fillColor: (Color purple alpha: 0.3);
				withText.
	el := builder elementOn: 'hello'.
	el translateTo: 20 @ 20.
	v add: el.
	
	self assert: el shape class == RTCompositeShape.
	