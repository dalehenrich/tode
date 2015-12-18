tests
testQualitative
	|palette |
	palette := ColorPalette qualitative.
	
	
	self assert: (palette colors: 9 scheme: 'Set1') size equals: 9.
	self assert: (palette colors: 3 scheme: 'Set1') size equals: 3.