layout-utils
layoutChildrenOfRow: row
	| oldCanvas|
	oldCanvas := self rectangle veryDeepCopy.
	row do: [ :each | | children |
		children := each attributes at: #elements ifAbsent: [ #() ].
		self 
			squarify: children 
			inRectangle: (RTRectangleTreeMap fromContainerBounds: (each position extent: each extent) withInset: self inset) ].
	
	self rectangle: oldCanvas.