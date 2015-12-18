adding
addSize: stream
	stream nextPutAll: ('markerWidth = "<1p>" markerHeight = "<1p>" ' expandMacrosWith: size)