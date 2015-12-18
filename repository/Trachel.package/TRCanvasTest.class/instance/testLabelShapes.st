label
testLabelShapes

	| label1 label2 rec |
	label1 := TRLabelShape new.
	label1 text: 'hello'.
	label2 := TRLabelShape new.
	label2 text: 'hello world'.
	self assert: label2 width > label1 width.
	
	rec := label1 encompassingRectangle.
	self assert: rec center = (0 @ 0).