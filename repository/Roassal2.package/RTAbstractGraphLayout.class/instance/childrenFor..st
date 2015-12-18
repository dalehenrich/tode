private
childrenFor: aNode
	
	^self cachedChildren
		at: aNode
		ifAbsentPut:
			[| nodes |
			nodes := OrderedCollection new.
			self edgesDo:
					[:edge | 
					(edge from == aNode and: [edge to ~= aNode])
						ifTrue:
							[(nodes includes: edge from) ifFalse: [nodes add: edge to]]].
			nodes]