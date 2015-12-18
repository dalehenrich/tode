as yet unclassified
showPointersTo: aNode
	| toObject fromObjects fromNodes|

	aNode wrapper pointersTo ifNil: [ 
		toObject := aNode wrappedObject.
		fromObjects := (aNode wrapper strongPointersToWrappedExcept: { thisContext }) .	
		fromNodes := fromObjects collect: [ :o | self nodeFor: o ].
		aNode wrapper pointersTo: fromNodes 
		].
	^ aNode wrapper pointersTo.
	