tests
testText
	| v label els |
	v := RTView new.
	label := RTLabel new.
	els := label elementsOn: (1 to: 30).
	self assert: els first trachelShape text = '1'.
	self assert: els second trachelShape text = '2'.