style
addStrokeWidth: stream
	stream nextPutAll: ('stroke-width:<1p>; ' expandMacrosWith: self strokeWidth)