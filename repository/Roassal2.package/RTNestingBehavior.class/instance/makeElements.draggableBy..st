utility
makeElements: elements draggableBy: backElement
	^ (backElement isKindOf: TRShape)
		ifTrue: [ self makeElements: elements draggableByTrachelShape: backElement ]
		ifFalse: [ self makeElements: elements draggableByTrachelShape: backElement trachelShape ]