tests
testBitmapShape
	| shape e |
	shape := RTBitmap new.
	shape form: (ColorForm extent: 600 @ 523 depth: 32).
	e := shape element.
	self assert: e encompassingRectangle extent equals: 600 @ 523