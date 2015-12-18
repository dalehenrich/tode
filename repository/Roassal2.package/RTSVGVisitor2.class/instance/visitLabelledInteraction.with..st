visitor-interactions
visitLabelledInteraction: anInt with: el
	stream nextPutAll: 'new RTLabelled({'.
		self addColor: anInt color.
		stream nextPutAll: 'low'.
		self addColor: anInt lowColor.
		stream nextPutAll: 'lbl: '.
		stream nextPutAll: '"',(self nameFor: anInt lbl),'"'.
		stream nextPutAll: '})'.