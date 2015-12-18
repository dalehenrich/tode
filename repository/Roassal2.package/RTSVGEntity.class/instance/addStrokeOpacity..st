style
addStrokeOpacity: stream
	stream nextPutAll: ('stroke-opacity:<1p>; ' expandMacrosWith: self strokeColor alpha)