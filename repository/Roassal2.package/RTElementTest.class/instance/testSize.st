tests
testSize
	| box el |
	box := RTBox new width: 10; height: 8.
	el := box element.
	
	self assert: el position = (0 @ 0).
	self assert: el height = 8.
	self assert: el width = 10