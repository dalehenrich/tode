examples
testEditableLabel
	| element label | 
	element := RTElement on: 708.
	label := RTEditableLabel new.
	self assert: (label textFor: element) = '708'.
	label updateTextFor: element with: '1005'.
	
	self assert: (label textFor: element) = '1005'.
	self assert: element model = 708.