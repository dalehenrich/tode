as yet unclassified
showPointersTo: aNode
	| toObject fromObjects fromNodes|
	aNode wrapper pointersTo ifNil: [ 
		toObject := aNode wrappedObject.
		fromObjects :=
			(self showAllPath ifTrue: [ 
				"Here we are going to extract the full graph, create all nodes and fill their pointersTo so in that case of scan we enter onlyOnce this condition"
				self processPathsGraph: aNode
				] ifFalse: [ aNode wrapper strongPointersToWrappedOnServer: self shell ]).
		fromNodes := fromObjects collect: [ :o | self nodeFor: o ].
		aNode wrapper pointersTo: fromNodes 
		].
	^ aNode wrapper pointersTo.
	