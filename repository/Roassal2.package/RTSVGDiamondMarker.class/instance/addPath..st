adding
addPath: stream	
	stream
		nextPutAll: (' d="M 0 0 L <1p> <2p> L 0 <3p> L -<1p> <2p> z" ' expandMacrosWith: xExtent with: ((yExtent/2) rounded) with: yExtent).