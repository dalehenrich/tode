hooks
renderIn: aView
	| shape es |
	shape := RTLabel new
		height: [ :assoc | (assoc value - self minFrequency) * maxHeight / (self maxFrequency - self minFrequency max: 1) + minHeight ];
		text: #key.
	es := shape elementsOn: self sortedAssociationsBounded.
	aView addAll: es.
	es @ RTPopup.
	es
		@
			(RTMenuActivable new
				action: #inspect;
				item: 'inspect objects' action: [ :e | self inspectObjectsForWord: e model key ]).
	layout on: es