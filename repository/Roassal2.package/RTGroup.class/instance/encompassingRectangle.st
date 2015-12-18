public
encompassingRectangle
	^ self 
		ifEmpty: [ (0 @ 0) corner: (0 @ 0) ]
		ifNotEmpty: [ Rectangle merging: (self collect: #encompassingRectangle) ]