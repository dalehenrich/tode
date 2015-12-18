label
testLabelShapesAndColor

	| label  |
	label := TRLabelShape new.
	label color: Color blue.
	self assert: label color = Color blue