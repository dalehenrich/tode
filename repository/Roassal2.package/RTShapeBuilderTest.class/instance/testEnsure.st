ensure
testEnsure

	builder rectangle color: Color red.
	self assert: builder current class equals: RTBox.
	self assert: ((builder current color) rtValue: RTElement new) equals: Color red.
	builder ensure: RTBox.
	self assert: ((builder current color) rtValue: RTElement new) equals: Color red.