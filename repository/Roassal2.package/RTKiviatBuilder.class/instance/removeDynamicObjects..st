adding
removeDynamicObjects: anObjectCollection
	anObjectCollection do: [ :o | 
		self removeDynamicObject: o ]