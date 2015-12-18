label
testLabelShapesHeight

	| label1 label2 |
	label1 := TRLabelShape new.
	label1 text: 'hello'.
	label2 := TRLabelShape new.
	label2 text: 'hello world'.
	self assert: label2 height = label1 height