tests
testLabelWidth
	| label1 label2 el |
	label1 := RTLabel new text: 'hello'.
	label2 := RTLabel new text: 'hello world'.
	el := RTElement new.
	self assert: (label1 widthFor: el) < (label2 widthFor: el)