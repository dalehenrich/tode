hooks
computePath
	| vector r u unit middle |
	vector := self to - self from. 
	r := vector r.
	r = 0 ifTrue: [ ^ false ].
	u := vector normal.
	unit := vector / r.
	"toPointWithOffset := self to - (offset * (vector r - size) * unit)." "add offset"
	middle := self to - (unit * size). 
	left :=  middle - (u * size).
	right := middle + (u * size).
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: self to;
				lineTo: left;
				lineTo: right;
				lineTo: self to. ]