adding
addStringWithFont: aByteString into: stream
	| converter |
	converter := RTSVGStringConverter new.
	stream
		nextPutAll: '<tspan font-family = "Arial, Helvetica, sans-serif">';
		nextPutAll: (converter convertString: aByteString);
		nextPutAll: '</tspan>'