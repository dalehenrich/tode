tests
testBitmapShape3
	| shape e form |
	shape := RTBitmap new.
	shape formElement: [ :anElement | anElement model ].
	form := ColorForm extent: 600 @ 523 depth: 32.
	e := shape elementOn: form.
	self assert: e trachelShape form equals: form.