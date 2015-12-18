transform
addRotation: angle point: point into: stream
	angle isNotNil 
		ifTrue: [  
		stream 
			nextPutAll: ('rotate(<1p>,<2p>,<3p>) ' expandMacrosWith: angle with: point x rounded with: point y rounded)]