tests
testEncompassing

	| lbl rec |
	lbl := (RTLabel elementOn: 'hello world').
	rec := lbl encompassingRectangle.
	self assert: rec class == Rectangle.
	self assert: rec center = (0 @ 0).
	self assert: rec extent > (10 @ 10)