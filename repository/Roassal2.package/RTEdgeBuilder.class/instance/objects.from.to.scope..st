deprecated
objects: objects from: fromBlock to: toBlock scope: aGroup

	| edges fromElement toElement fromObject toObject |
	objects isEmpty ifTrue: [ ^ #() ].
	edges := RTGroup new.
	objects do: [ :object |
		fromObject := fromBlock rtValue: object.
		toObject := toBlock rtValue: object.
		((aGroup includes: fromObject) and: [ aGroup includes: toObject ]) ifTrue: [  
				fromElement := self view elementFromModel: (fromBlock rtValue: object).
				toElement := self view elementFromModel: (toBlock rtValue: object).
				(self shouldCreateEdgeFrom: fromElement to: toElement)
					ifTrue: [   
						edges add: (self edgeFrom: fromElement to: toElement) ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges
