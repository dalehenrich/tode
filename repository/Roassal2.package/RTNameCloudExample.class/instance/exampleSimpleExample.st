sources
exampleSimpleExample

| b |
b := RTNameCloud new 
		addString: 'open

		| v shape |
		v := RTView new.
		shape := RTLabel new height: [ :assoc | assoc value ]; text: #key.
		v addAll: (shape elementsOn: table associations).
		RTFlowLayout on: v elements.
		v open'.
	b build.
	^ b view