control points
getListOfPointsForTrachel: anEdge
	| listOfPoints realControllingElements |
	listOfPoints := OrderedCollection new.
	
	"We add the first point of the edge"
	listOfPoints add: (attachPoint startingPointOf: anEdge).
	
	"Set the controlling elements from a follow block, if any"
	follow ifNotNil: 
		[ self setControllingElementsFromFollowFor: anEdge ].
	
	realControllingElements := controllingElements rtValue: anEdge.
	realControllingElements ~= #() ifTrue: 
		[ | cElements |
			cElements := realControllingElements collect: #position.
			cElements isNotEmpty ifTrue: [ 
				(cElements first = anEdge from position and: [ cElements size  > 1 ])
					ifTrue: [ cElements := cElements allButFirst ].
				(cElements last = anEdge to position and: [ cElements size  > 1 ])
					ifTrue: [ cElements := cElements allButLast ] ].
			listOfPoints addAll: cElements
		].
		
	"We add the last point of the edge"
	listOfPoints add: (attachPoint endingPointOf: anEdge).
	^ listOfPoints