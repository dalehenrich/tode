computing
normalize
	| mag |
	mag := self magnitude.
	mag = 0 ifTrue: [ ^ mag ].
	x := x / mag.
	y := y / mag.
	z := z / mag.
	^ mag.