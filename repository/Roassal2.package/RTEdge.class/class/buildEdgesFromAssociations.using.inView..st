DEPRECATED - edge construction
buildEdgesFromAssociations: associations using: aLineShape inView: view
	"associations could be {2 -> 5 . 1 -> 5 }.
	 Takes the model of element into account"
	
	| edges associationsOfElements |
	associationsOfElements := associations collect: [ :assoc | (view elementFromModel: assoc key) -> (view elementFromModel: assoc value) ].
	associationsOfElements isEmpty ifTrue: [ ^ #() ].
	
	edges := OrderedCollection new.
	associationsOfElements do: [ :associationOfTwoElements |
				| edge |
				edge := RTEdge from: associationOfTwoElements key to: associationOfTwoElements value. 
				edge + aLineShape.
				edges add: edge ].
	view addAll: edges.
	^ edges
