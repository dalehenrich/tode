adding
addRefPosition: stream
	stream nextPutAll: ('refX = "<1p>" refY = "<2p>" ' expandMacrosWith: self xExtent with: (self yExtent / 2) rounded)