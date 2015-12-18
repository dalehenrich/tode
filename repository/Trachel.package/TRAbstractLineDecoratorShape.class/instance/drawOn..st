drawing
drawOn: athensCanvas
	from ~= to 
		ifTrue: [  
			athensCanvas pathTransform restoreAfter: [ 
				athensCanvas setShape: self path.
				open 
					ifFalse: [
						athensCanvas setPaint: color.
						athensCanvas draw ].
				(athensCanvas setStrokePaint: strokePaint) width: self width.
				athensCanvas draw ] ]