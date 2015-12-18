shapes
withTextAbove: aSymbolOrABlock
	| newShape |
	newShape := RTCompositeShape new.
	newShape add: (RTLabel new text: aSymbolOrABlock).
	newShape add: shape.
	newShape vertical.
	newShape setAutomaticRelayout.
	shape := newShape.