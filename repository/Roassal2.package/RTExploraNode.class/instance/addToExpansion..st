adding
addToExpansion: aNode
	(((expansion associations inject: #() into: [ :acc :next |
		acc, (next value collect: [ :x | next key -> x ]) ])
			select: [ :x | x value = (aNode element model) ])
				collect: [ :x| x key ])
					do: [ :x | (expandedNodes at: x) add: aNode.
							self checkExpansionOnDirection: x ]