utils
fatherOf: aNode
	^ aNode attributes at: #father ifAbsent: [ nil ]