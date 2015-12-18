adding
addPath: stream
	stream
		nextPutAll: 'name="bezier[]" ';
		nextPutAll: ('d="M<1p>,<2p> ' expandMacrosWith: (self points at: 1) x rounded with: (self points at: 1) y rounded).
		self addCurves: stream.