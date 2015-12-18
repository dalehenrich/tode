tests
testLabel
	| label1 label2 el |
	label1 := RTLabel new.
	label2 := RTLabel new textElement: [ :e | e model, '2' ].
	el := RTElement on: 'hello'.
	self assert: (label1 textFor: el) = 'hello'.
	self assert: (label2 textFor: el) = 'hello2'.