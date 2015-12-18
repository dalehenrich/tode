adding
addWidth: x height: y into: stream
	stream
		nextPutAll:
				('width="<1p>" height="<2p>" ' expandMacrosWith: x with: y).