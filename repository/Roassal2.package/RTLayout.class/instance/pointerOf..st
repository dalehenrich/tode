utils
pointerOf: aNode

	^ aNode attributes at: #pointer ifAbsent: [ ^ nil ]