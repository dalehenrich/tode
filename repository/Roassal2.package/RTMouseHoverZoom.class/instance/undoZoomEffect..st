private
undoZoomEffect: anElement
	| previousExtent |
	previousExtent := anElement attributeAt: self attributeSymbol ifAbsent: [ ^ self ].
	self setExtent: previousExtent for: anElement after: [ anElement removeAttributeAt: self attributeSymbol ifAbsent: [ nil ] ]
