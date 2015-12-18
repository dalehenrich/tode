utils
rightContourOf: aNode
	^ aNode attributes at: #rightContour ifAbsent: [ ^ nil ]