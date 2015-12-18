adding
addObjects: objects description: aBlockOrSymbol
	objects do: [ :o |
		self addString: (aBlockOrSymbol rtValue: o) object: o ]
	 