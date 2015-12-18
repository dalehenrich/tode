DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock to: toBlock using: aLineShape scope: aGroup
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	| edges fromElement toElement |
	objects isEmpty ifTrue: [ ^ #() ].
	edges := RTGroup new.
	objects do: [ :object |
		fromElement := aGroup elementFromModel: (fromBlock rtValue: object).
		toElement := aGroup elementFromModel: (toBlock rtValue: object).
		(fromElement notNil and: [ toElement notNil ])
			ifTrue: [  
				| edge |
				edge := RTEdge from: fromElement to: toElement. 
				edge model: object.
				edge + aLineShape.
				edges add: edge ] ].
	^ edges
