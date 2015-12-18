accessing
thickness: aBlockOrAValue
	self externalRadius: [ :o | (self innerRadiusFor: (RTElement on: o)) + (aBlockOrAValue rtValue: o) ]