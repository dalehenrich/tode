createLinesAndLabels
createLinesAndLabelsIfNecessary
	lineH
		ifNil: [ 
			lineH := TRLineShape new.
			canvas := builder view canvas.
			canvas addShape: lineH.
			lineV := TRLineShape new.
			canvas addShape: lineV.
			
			labelH := TRLabelShape new.
			canvas addShape: labelH.
			labelV := TRLabelShape new.
			canvas addShape: labelV.]