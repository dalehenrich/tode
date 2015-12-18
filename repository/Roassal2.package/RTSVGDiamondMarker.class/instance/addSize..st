adding
addSize: stream
	stream nextPutAll:  ('markerWidth = "<1p>" markerHeight = "<2p>" ' expandMacrosWith: (3 *size) with: size)