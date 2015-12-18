adding
addDynamicObjects: anObjectCollection

	anObjectCollection do: [ :o | 
		self addDynamicObject: o
	].
