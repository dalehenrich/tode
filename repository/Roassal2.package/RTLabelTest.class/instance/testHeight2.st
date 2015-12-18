tests
testHeight2
	| v label els |
	v := RTView new.
	label := RTLabel new.
	label height: #yourself.
	els := label elementsOn: (1 to: 3).
	self assert: els first trachelShape text = '1'.
	self assert: els first trachelShape fontSize = 1.

	self assert: els second trachelShape text = '2'.
	self assert: els second trachelShape fontSize = 2.

	self assert: els third trachelShape text = '3'.
	self assert: els third trachelShape fontSize = 3.