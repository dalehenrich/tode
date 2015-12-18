creating
testCreatingMany
	| els |
	els := RTBox elementsOn: (1 to: 20).
	self assert: els size = 20.
	self assert: (els collect: #model) asArray = (1 to: 20) asArray.