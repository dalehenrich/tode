position
testPosition

	| el |
	el := RTBox element.
	el translateTo: 1.1234 @ 1.1234.
	self assert: el position = (1.1234 @ 1.1234). 