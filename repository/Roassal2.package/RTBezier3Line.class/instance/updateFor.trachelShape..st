rendering
updateFor: edge trachelShape: trachelShape
	trachelShape isNil ifTrue: [ ^ self ].
	
	trachelShape points: (Array with: (attachPoint startingPointOf: edge) with: (controlElement position) with: (attachPoint endingPointOf: edge)).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath.
	^ trachelShape
	