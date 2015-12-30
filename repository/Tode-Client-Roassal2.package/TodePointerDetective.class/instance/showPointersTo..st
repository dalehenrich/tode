nodes
showPointersTo: aNode
	^ aNode wrapper parents collect: [ :o | self nodeFor: o ].