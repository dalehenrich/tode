accessing
position
	shapeAndOffsets ifEmpty: [ ^ 0 @ 0 ].
	^ (Rectangle merging: (self shapes collect: #encompassingRectangle)) center
	"^ self encompassingRectangle center"