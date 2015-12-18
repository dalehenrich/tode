RTNameCloudExample new installTitle: 'SimpleExample' 
		code:
		'
| b |
b := RTNameCloud new 
		addString: ''open

		| v shape |
		v := RTView new.
		shape := RTLabel new height: [ :assoc | assoc value ]; text: #key.
		v addAll: (shape elementsOn: table associations).
		RTFlowLayout on: v elements.
		v open''.
b open.
b  view canvas.
		'
	