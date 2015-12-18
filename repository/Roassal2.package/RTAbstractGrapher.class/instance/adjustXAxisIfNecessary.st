utility
adjustXAxisIfNecessary
	"Move the title below the X axis."
	self getAxisX numberOfLabels = 0
		ifTrue: [ self getAxisX titlePosition: (0 @ -20) ]
		ifFalse: [ self getAxisX titlePosition: (0 @ -30) ].
