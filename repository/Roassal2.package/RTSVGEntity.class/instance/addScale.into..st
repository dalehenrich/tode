transform
addScale: anInteger into: stream
	stream nextPutAll: ('scale(<1p>) ' expandMacrosWith: anInteger)