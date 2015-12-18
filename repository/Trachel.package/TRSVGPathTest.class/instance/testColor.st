tests
testColor
	| path |
	path := TRSVGPath new.
	self assert: path color equals: Color black.
	
	path color: Color blue.
	self assert: path color equals: Color blue.