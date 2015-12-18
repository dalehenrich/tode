tests
testTranslationBy
	| el |
	el := RTBox element.
	el translateBy: 15 @ 10.
	self assert: el position = (15 @ 10).

	el translateBy: 5 @ 10.
	self assert: el position = (20 @ 20).
