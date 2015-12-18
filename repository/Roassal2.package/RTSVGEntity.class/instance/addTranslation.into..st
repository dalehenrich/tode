transform
addTranslation: point into: stream
	stream nextPutAll: ('translate(<1p>,<2p>) ' expandMacrosWith: point x rounded with: point y rounded)