adding
addPosition: stream
	stream
		nextPutAll:
				('cx="<1p>" cy="<2p>" ' expandMacrosWith: self box center x rounded with: self box center y rounded).