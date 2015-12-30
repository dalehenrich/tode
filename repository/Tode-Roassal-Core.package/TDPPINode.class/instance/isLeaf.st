testing
isLeaf
	children ifNil: [ ^ false ].
	^ self children isEmpty