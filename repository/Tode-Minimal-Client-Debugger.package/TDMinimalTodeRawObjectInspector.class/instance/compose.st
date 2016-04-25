building
compose
	self title: 'Context'.
	self tabulator
		with: [ :browser | 
			browser row: #fields.
			browser transmit
				to: #fields;
				andShow: [ :a | self fieldsIn: a ].
			browser transmit
				from: #fields;
				toOutsidePort: #selection;
				transformed: [ :string | 
					string
						ifNotNil: [ | ar |
							ar := self clientElementMap at: string.
							(ar at: 1) itemSelected: (ar at: 2) listSelections: nil.
							self debugger session contextClientElement ] ] ]