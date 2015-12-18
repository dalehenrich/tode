shapes
withText: aSymbolOrABlock
	shape := shape + (RTLabel new text: aSymbolOrABlock).
	^ shape