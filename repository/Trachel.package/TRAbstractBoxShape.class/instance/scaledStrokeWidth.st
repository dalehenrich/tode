drawing
scaledStrokeWidth
	| scale |
	scale := self canvas camera scale.
	^ scale < 1
		ifTrue: [ self strokeWidth ]
		ifFalse: [ self strokeWidth / scale ]