style
addFillOpacity: stream
	stream nextPutAll: ('fill-opacity:<1p>; ' expandMacrosWith: self fillColor alpha)