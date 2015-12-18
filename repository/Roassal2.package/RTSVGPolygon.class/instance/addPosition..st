adding
addPosition: stream
	stream
		nextPutAll:
				('x="<1p>" y="<2p>" ' expandMacrosWith: self box topLeft x rounded with: self box topLeft y rounded).