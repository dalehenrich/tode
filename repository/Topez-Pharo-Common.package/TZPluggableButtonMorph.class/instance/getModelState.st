accessing
getModelState
	model ifNil: [ ^ false ].
	^ getStateSelector
		ifNil: [ false ]
		ifNotNil: [ 
			getStateSelector numArgs = 0
				ifTrue: [ model perform: getStateSelector ]
				ifFalse: [ model perform: getStateSelector withEnoughArguments: self stateSelectorArgument ] ]