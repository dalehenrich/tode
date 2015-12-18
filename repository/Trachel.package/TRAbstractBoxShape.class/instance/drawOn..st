drawing
drawOn: athensCanvas
	self shouldBeDrawn
		ifFalse: [ ^ self ].
	athensCanvas pathTransform
		restoreAfter: [ 
			athensCanvas pathTransform
				multiplyBy: matrix asFloatTransform.
			self preDrawOn: athensCanvas.
			athensCanvas 
				setPaint: color;
				drawShape: self path.
			self drawStrokeIfNecessaryOn: athensCanvas ]