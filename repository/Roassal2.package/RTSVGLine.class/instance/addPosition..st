adding
addPosition: stream
	stream
		nextPutAll:
				('x1="<1p>" y1="<2p>" ' expandMacrosWith: self position x rounded with: self position y rounded);
		nextPutAll:
				('x2="<1p>" y2="<2p>" ' expandMacrosWith: self extent x rounded with: self extent y rounded).