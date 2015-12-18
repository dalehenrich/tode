drawing
drawStrokeIfNecessaryOn: athensCanvas
	| ratio |
	self canvas ifNil: [ ^ self ].
	ratio := self scaledStrokeWidth.
	^ strokePaint
		ifNotNil: [ 
			(athensCanvas setStrokePaint: strokePaint) width: ratio asFloat.
			athensCanvas drawShape: path ]