tests
testLabelAndElement
	| label el |
	label := RTLabel new textElement: [ :e | e model ].
	el := label elementOn: 'hello'.
	self assert: el width = (label widthFor: el)