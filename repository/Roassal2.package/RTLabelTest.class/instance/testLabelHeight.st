tests
testLabelHeight
	| label1 label2 el |
	label1 := RTLabel new text: 'hello'.
	label2 := RTLabel new text: 'hello world'.
	el := RTElement new.
	self assert: (label1 heightFor: el) = (label2 heightFor: el)