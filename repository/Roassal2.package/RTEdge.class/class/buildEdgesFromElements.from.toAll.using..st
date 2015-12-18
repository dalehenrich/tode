DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock toAll: toBlock using: aLineShape
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"
	"toBlock should return a collection of models"

	| edges container fromElement toElements elementsWithModels |
	elements isEmpty ifTrue: [ ^ #() ].
	edges := OrderedCollection new.
	elementsWithModels := elements select: [ :el | el model notNil ].
	
	elementsWithModels do: [ :element |
		container := element view.
		fromElement := container elementFromModel: (fromBlock rtValue: element model).
		
		"We get the list of elements that corresponds to (toBlock roValues: element model)"
		toElements := OrderedCollection new.
		(toBlock rtValue: element model) do: [ :model | 
			| v |
			v := container elementFromModel: model.
			v notNil ifTrue: [ toElements add: v ] ].
		
		
		(fromElement notNil and: [ toElements notEmpty ])
			ifTrue: [  
				toElements do: [ :toElement |
					| edge |
					edge := RTEdge from: fromElement to: toElement. 
					edge + aLineShape.
					edges add: edge.
					container add: edge ] ]  ].
	^ edges
