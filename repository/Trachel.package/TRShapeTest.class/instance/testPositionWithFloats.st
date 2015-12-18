position
testPositionWithFloats

	| box |
	box := TRBoxShape new.
	box translateTo: 1.1234 @ 1.1234.
	self assert: box position = (1.1234 @ 1.1234)