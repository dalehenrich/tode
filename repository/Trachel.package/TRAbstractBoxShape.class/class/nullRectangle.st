public
nullRectangle
	nullRectangle ifNotNil: [ ^ nullRectangle ].
	nullRectangle := (0 @ 0) extent: (0 @ 0).
	^ nullRectangle