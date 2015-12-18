accesing
classes
	
	
	^ classes ifNil: [ classes := OrderedCollection new.
		self packages do: [ :pkg | classes addAll: pkg classes ].
		classes ].