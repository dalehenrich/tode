hooks
renderIn: aView

	| rowsOfElements es interaction |
	interaction := RTPopup new.
	rowsOfElements := OrderedCollection new.
	
	objects do: [ :o | 	
		es := shapeBuilder elementsOn: ((lineBlock rtValue: o) collect: [ :computedObject | (Array with: o with: computedObject ) ]).
		
		RTVerticalLineLayout new gapSize: 0; on: es.
		rowsOfElements add: es.
		aView addAll: es.
		interactionBuilder setUpElements: es
	].
	RTHorizontalLineLayout new alignBottom; gapSize: 0; on: rowsOfElements.
	self setTitleIfNecessary
	
	