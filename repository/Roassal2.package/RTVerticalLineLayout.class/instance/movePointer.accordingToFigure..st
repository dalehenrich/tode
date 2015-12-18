hook
movePointer: pointer accordingToFigure: aNodeFigure
	
	^ pointer x @ (pointer y + aNodeFigure height + self verticalGap)