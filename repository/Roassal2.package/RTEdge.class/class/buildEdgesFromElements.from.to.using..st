DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock to: toBlock using: aLineShape
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	| edges container fromElement toElement elementsWithModels |
	elements isEmpty ifTrue: [ ^ #() ].
	edges := OrderedCollection new.
	elementsWithModels := elements select: [ :el | el model notNil ].
	elementsWithModels do: [ :element |
		container := element parent.
		fromElement := container elementFromModel: (fromBlock rtValue: element model).
		toElement := container elementFromModel: (toBlock rtValue: element model).
		(fromElement notNil and: [ toElement notNil ])
			ifTrue: [  
				| edge |
				edge := RTEdge from: fromElement to: toElement. 
				edge + aLineShape.
				edges add: edge.
				container add: edge ] ].
	^ edges
