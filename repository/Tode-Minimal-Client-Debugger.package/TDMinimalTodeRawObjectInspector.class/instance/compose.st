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
				transformed: [ :assoc | assoc ifNotNil: [ assoc value ] ] ]