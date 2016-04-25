private building
fieldsFor: aClientListElement
	| list result |
	list := aClientListElement firstList key.
	result := OrderedCollection new.
	1 to: list size do: [ :index | 
		| key |
		key := (list at: index) asString.
		self clientElementMap
			at: key
			put:
				{aClientListElement.
				index}.
		result add: key ].
	^ result