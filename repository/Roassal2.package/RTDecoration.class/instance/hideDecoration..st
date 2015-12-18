actions
hideDecoration: anElement 
	| decorations callback |
	decorations := anElement attributeAt: #decoration ifAbsent: [ ^ self ].
	decorations do: #remove.
	anElement removeAttributeAt: #decoration ifAbsent: [ nil ].
	callback := anElement attributeAt: #decorationCallback ifAbsent: [ ^ self ].
	anElement trachelShape removeCallback: callback ifAbsent: [ nil ].