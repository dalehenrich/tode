utils
thetaOf: aNode
	^ aNode attributes at: #theta ifAbsent: [ ^ 0 ]