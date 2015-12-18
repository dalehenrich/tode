tests
testDefault
	| path |
	path := TRSVGPath new.
	self assert: path height equals: 0.
	self assert: path width equals: 0.