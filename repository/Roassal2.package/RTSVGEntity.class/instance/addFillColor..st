style
addFillColor: stream
	self fillColor = nil
		ifTrue: [
			stream
				nextPutAll: 'fill:none; '
			  ]
		ifFalse: [  
			stream
				nextPutAll:
					('fill:rgb(<1p>,<2p>,<3p>); '
						expandMacrosWith: (self fillColor red * 256) rounded
						with: (self fillColor green * 256) rounded
						with: (self fillColor blue * 256) rounded)]