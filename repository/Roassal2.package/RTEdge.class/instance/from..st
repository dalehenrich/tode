accessing
from: anElement
	from ifNotNil: [ :element | element removeConnectedEdge: self ].
	from := anElement.
	anElement addConnectedEdge: self