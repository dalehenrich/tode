position
testScaleBox

	| box |
	box := TRBoxShape new.
	box scaleBy: 2.0.
	self assert: box scale equals: 2.0 @ 2.0.