accessing
to: anElement
	to ifNotNil: [ :element | element removeConnectedEdge: self ].
	to := anElement.
	anElement addConnectedEdge: self