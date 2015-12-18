initialization
initialize
	| base |
	super initialize.
	shapeBuilder := RTShapeBuilder new.
	base := Color r: 51 g: 153 b: 255 range: 255.
	shapeBuilder rectangle borderColor: base ; color: (base alpha: 0.2).
	self key: #rtSelectorShape.
	announcer := Announcer new.
	self color: Color red.
	view := nil.
	self when: RTSelectionStart do: [ self unhighlight: view elements ].
	self when: RTSelectionChange do: [:e| self highlight: e group ].
	