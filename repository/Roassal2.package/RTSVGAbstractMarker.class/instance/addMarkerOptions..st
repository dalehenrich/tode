adding
addMarkerOptions: stream
	self addViewBox: stream.
	self addRefPosition: stream.
	self addSize: stream.
	self addOrientation: stream