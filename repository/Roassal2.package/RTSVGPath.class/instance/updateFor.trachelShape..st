hooks
updateFor: anElement trachelShape: trShape
	trShape isNil ifTrue: [ ^ self ].
	trShape resetPath.
	
	