private
doZoomEffect: anElement
	(anElement hasAttribute: self attributeSymbol) ifTrue: [ ^ self ].
	
	zoomInElements do: [ :el | self undoZoomEffect: el ].
	zoomInElements := OrderedCollection new.
	zoomInElements add: anElement.
	
	anElement attributeAt: self attributeSymbol put: anElement extent.
	self setExtent: (desiredExtent rtValue: anElement) for: anElement after: [].