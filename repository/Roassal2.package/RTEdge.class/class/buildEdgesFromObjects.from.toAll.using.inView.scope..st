DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock toAll: toAllBlock using: aLineShape inView: view scope: aGroup
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toAllBlock operate on the model of the elements"

	| edges fromElement toElement |
	edges := RTGroup new.
	objects isEmpty ifTrue: [ ^ edges ].
	objects do: [ :object |
		fromElement := aGroup elementFromModel: (fromBlock rtValue: object).
		(toAllBlock rtValue: object) do: [ :toObject |
			toElement := aGroup elementFromModel: toObject.
			(fromElement notNil and: [ toElement notNil ])
				ifTrue: [  
					(fromElement ~~ toElement) ifTrue: 
						[ | edge |
						edge := RTEdge from: fromElement to: toElement. 
						edge + aLineShape.
						edges add: edge.
						view add: edge ] ] ] ].
	^ edges
