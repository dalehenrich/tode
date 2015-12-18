tests
testDiverging
	| palette |
	palette := ColorPalette diverging.

	self assert: (palette colors: 11 scheme: 'RdGy') size equals: 11.
	self assert: (palette colors: 11 scheme: 'RdGy') first asHTMLColor equals: '#67001F'.
	
	self assert: (palette colors: 6 scheme: 'RdGy') size equals: 6.
	self assert: (palette colors: 6 scheme: 'RdGy') second asHTMLColor equals: '#EF8A62'.