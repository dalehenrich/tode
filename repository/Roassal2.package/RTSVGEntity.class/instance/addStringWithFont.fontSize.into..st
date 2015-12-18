adding
addStringWithFont: aByteString fontSize: aSyze into: stream
	| converter |
	converter := RTSVGStringConverter new.
	stream
		nextPutAll: '<tspan font-family = "Arial, Helvetica, sans-serif" font-size="', aSyze asString, 'px">';
		nextPutAll: (converter convertString: aByteString);
		nextPutAll: '</tspan>'