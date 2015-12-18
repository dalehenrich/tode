private
nextColor
	
	colorIndex := colorIndex + 1.
	^colorIndex > self colors size
		ifTrue: [ self defaultColor ]
		ifFalse: [ self colors at: colorIndex ]