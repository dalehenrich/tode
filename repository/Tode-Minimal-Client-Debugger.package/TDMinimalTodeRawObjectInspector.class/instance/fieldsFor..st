private building
fieldsFor: aClientListElement
	| list result |
	list := aClientListElement firstList key.
	result := OrderedCollection new.
	1 to: list size do: [ :index | 
		result
			add:
				(list at: index)
					->
						{aClientListElement.
						index} ].
	^ result