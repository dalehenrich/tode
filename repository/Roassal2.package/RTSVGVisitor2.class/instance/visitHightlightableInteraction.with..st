visitor-interactions
visitHightlightableInteraction: anInt with: el
	stream nextPutAll: 'new RTHighlightable({'.
	self addColor: anInt highlightedColor.
	stream nextPutAll: 'ides: ['.
		((anInt instVarNamed: #highlightElements) rtValue: el) 
		do: [ :e |
			stream nextPutAll: '"', (self nameFor: e trachelShape), '",' ].
		stream nextPutAll: ']})'.