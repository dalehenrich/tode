adding
addViewBox: stream
	stream nextPutAll: ('viewBox = "0 0 <1p> <2p>" ' expandMacrosWith: self xExtent with: self yExtent)