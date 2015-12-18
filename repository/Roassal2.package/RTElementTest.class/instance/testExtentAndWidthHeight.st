tests
testExtentAndWidthHeight

	| shape |
	shape := RTBox new extent: 40 @ 20.
	self assert: (shape widthFor: RTElement new) = 40.
	self assert: (shape heightFor: RTElement new) = 20.