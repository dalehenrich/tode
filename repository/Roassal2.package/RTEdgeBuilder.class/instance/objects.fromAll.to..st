deprecated
objects: objects fromAll: fromBlock to: toBlock
	"aGroup is a group of objects"

	| edges fromElement toElement |
	edges := RTGroup new.
	objects isEmpty
		ifTrue: [ ^ edges ].
	
	objects
		do: [ :object | 
			toElement := self view elementFromModel: (toBlock rtValue: object).
			(fromBlock rtValue: object)
				do: [ :fromObject | 
					fromElement := self view elementFromModel: fromObject.		
											 
					(self shouldCreateEdgeFrom: fromElement to: toElement)
						ifTrue: [ 
							| edge |
							edge := self edgeFrom: fromElement to: toElement.
							edges add: edge ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges