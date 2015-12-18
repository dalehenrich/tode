svg
addCanvasColor
	stream
		nextPutAll:
			('style="background-color: rgb(<1p>,<2p>,<3p>);float:left" '
				expandMacrosWith: (backgroundColor red * 256) rounded
				with: (backgroundColor green * 256) rounded
				with: (backgroundColor blue * 256) rounded)