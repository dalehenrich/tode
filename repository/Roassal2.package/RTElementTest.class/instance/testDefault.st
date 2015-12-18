tests
testDefault
	| el |
	el := RTElement new.
	self assert: el position = (0 @ 0).
	"self assert: el width = 0.
	self assert: el height = 0."