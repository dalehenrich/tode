adding
addWidth: x height: y into: stream
	stream
		nextPutAll:
				('rx="<1p>" ry="<2p>" ' expandMacrosWith: x with: y).