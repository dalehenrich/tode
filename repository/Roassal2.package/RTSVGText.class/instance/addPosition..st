adding
addPosition: stream
	|box fixX fixY|
	box := TRLabelShape new
		text: self content;
		encompassingRectangle.
	 fixX := (self x - (box width / 5)) rounded.
	 fixY := (self y + (box height / 4)) rounded.
	stream
		nextPutAll:
				('x="<1p>" y="<2p>" ' expandMacrosWith: fixX with: fixY).