tests
testQualitativeError
	|palette |
	palette := ColorPalette qualitative.
	
	
	self should: [palette colors: 1 scheme: 'Set1'] raise: Error.
	self should: [palette colors: 80 scheme: 'Set1'] raise: Error.
	self should: [palette colors: 9 scheme: 'Pastel2'] raise: Error.