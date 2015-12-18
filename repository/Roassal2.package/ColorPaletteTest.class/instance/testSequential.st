tests
testSequential
	| palette |
	palette := ColorPalette sequential.

	self assert: (palette colors: 3 scheme: 'Purples') size equals: 3.
	self assert: (palette colors: 3 scheme: 'Purples') first asHTMLColor equals: '#efedf5' asUppercase.
	self assert: (palette colors: 3 scheme: 'Purples') second asHTMLColor equals: '#bcbddc' asUppercase.
	self assert: (palette colors: 3 scheme: 'Purples') third asHTMLColor equals: '#756bb1' asUppercase.
			
"	self assert: (palette colors: 6 scheme: 'RdGy') size equals: 6.
	self assert: (palette colors: 6 scheme: 'RdGy') second asHTMLColor equals: '#EF8A62'."