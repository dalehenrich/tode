utils
modOf: aNode
	^ aNode attributes at: #mod ifAbsent: [ ^ 0 ]
