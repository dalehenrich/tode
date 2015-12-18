utils
leftContourOf: aNode
	^ aNode attributes at: #leftContour ifAbsent: [ ^ nil ]