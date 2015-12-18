tests
testTranslationTo
	| el |
	el := RTBox element.
	el translateTo: 15 @ 10.
	self assert: el position = (15 @ 10)