layout
highestAspectRatioFor: row remainingSpace: remainingSpace
	| sum areas minArea maxArea |
	areas := row collect: [ :e | e attributes at: #area ].
	sum := areas sum.
	maxArea := areas max.
	minArea := areas min.
	((remainingSpace <=0) or: [minArea <= 0])
		ifTrue: [ ^ SmallInteger maxVal ]
		ifFalse: [ ^ ((((remainingSpace * remainingSpace) * maxArea) / (sum * sum))  max: ((sum * sum) / (minArea * (remainingSpace * remainingSpace)))) ]