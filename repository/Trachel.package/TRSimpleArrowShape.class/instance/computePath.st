hooks
computePath
	| vector u unit middle |
	self shouldBeDrawn ifFalse: [ ^ self ].
	vector := self to - self from. 
	u := vector normal.
	unit := vector / vector r.
	middle := self to - (unit * size). 
	left :=  middle - (u * baseSize / 2).
	right := middle + (u * baseSize / 2).
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: left;
				lineTo: self to;
				lineTo: right. ]