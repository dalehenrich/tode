createLinesAndLabels
removeLinesAndLabelsIfNecessary
	lineH notNil
		ifTrue: [ 
			lineH remove.
			lineV remove.
			labelH remove.
			labelV remove.
			self updateCanvas.
			lineH := nil.
			lineV := nil.
			labelH := nil.
			labelV := nil ]