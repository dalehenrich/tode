style
addStrokeColor: stream
	stream
		nextPutAll:
			('stroke:rgb(<1p>,<2p>,<3p>); '
				expandMacrosWith: (self strokeColor red * 256) rounded
				with: (self strokeColor green * 256) rounded
				with: (self strokeColor blue * 256) rounded)