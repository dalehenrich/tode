tests
testSizeAndModel
	| box el |
	box := RTBox new width: [ :e | e + 2 ]; height: [ :e | e + 3 ].
	el := box elementOn: 5.
	
	self assert: el position = (0 @ 0).
	self assert: el height = 8.
	self assert: el width = 7