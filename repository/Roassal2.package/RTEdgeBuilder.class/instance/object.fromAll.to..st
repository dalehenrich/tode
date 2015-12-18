deprecated
object: object fromAll: fromBlock to: toBlock
	"aGroup is a group of objects"

	| edges fromElement toElement |
	edges := RTGroup new.
		toElement := self view elementFromModel: (toBlock rtValue: object).
		(fromBlock rtValue: object) do: [ :fromObject |
			fromElement := self view elementFromModel: fromObject.
			(fromElement notNil and: [ toElement notNil ])
				ifTrue: [  
					(self shouldCreateEdgeFrom: fromElement to: toElement) ifTrue: 
						[ | edge |
						edge := self edgeFrom: fromElement to: toElement. 
						edges add: edge ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges
