as yet unclassified
showPointersFrom: aNode
	^ aNode wrapper children collect: [ :o | self nodeFor: o ].