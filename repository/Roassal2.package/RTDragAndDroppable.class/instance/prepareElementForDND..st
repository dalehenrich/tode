initialization
prepareElementForDND: anElement
	anElement when: TRMouseDragEnd do: [ :evt | 
		| receivingElement underShape |
		underShape := anElement view canvas shapeForPositionInPixels: evt position.
		underShape class == TRCanvas ifFalse: [ 
			receivingElement := underShape element.

			(hosts includes: receivingElement)
				ifTrue: [doBlock value: elementBeingDragged value: receivingElement ] ] ]