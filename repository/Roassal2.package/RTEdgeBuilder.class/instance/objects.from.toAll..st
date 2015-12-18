deprecated
objects: objects from: fromBlock toAll: toAllBlock
	"aGroup is a group of objects"

	| edges fromElement toElement |
	edges := RTGroup new.
	objects isEmpty ifTrue: [ ^ edges ].
	objects do: [ :object |
		fromElement := self view elementFromModel: (fromBlock rtValue: object).
		(toAllBlock rtValue: object) do: [ :toObject |
			toElement := self view elementFromModel: toObject.
			(fromElement notNil and: [ toElement notNil ])
				ifTrue: [  
					(self shouldCreateEdgeFrom: fromElement to: toElement) ifTrue: 
						[ | edge |
						edge := self edgeFrom: fromElement to: toElement. 
						edges add: edge ] ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges
