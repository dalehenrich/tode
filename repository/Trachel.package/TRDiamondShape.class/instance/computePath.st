hooks
computePath
	| vector r u unit middle|
	vector := self to - self from.
	r := vector r.
	r = 0 ifTrue: [ ^ false ].
	
	u := vector normal.
	unit := vector / r.
	"toPointWithOffset := self to - (offset * (vector r - size) * unit)." "add offset"
	end := self to - (2*unit * size). 
	middle := self to - (unit * size). 
	left :=  middle - (u * size * 0.7).
	right := middle + (u * size * 0.7).
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: end;
				lineTo: left;
				lineTo: self to;
				lineTo: right;
				lineTo: end. ]