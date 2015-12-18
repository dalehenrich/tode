layout
squarify: children currentRow: row remainingSpace: remainingSpace
	| firstElement remainingChildren |
	firstElement := children first.
	(row isEmpty or: [
		| oldRatio newElementRatio |
		oldRatio := self highestAspectRatioFor: row remainingSpace: remainingSpace.
		newElementRatio := self highestAspectRatioFor: (row, (Array with: firstElement)) remainingSpace: remainingSpace.
		oldRatio >= newElementRatio ] ) 
	ifTrue: [ 
		remainingChildren := children allButFirst.
		(remainingChildren isEmpty) ifTrue: [ self layoutRow: (row, (Array with: firstElement)) ]
		ifFalse: [ 
			self 
				squarify: remainingChildren
				currentRow: (row, (Array with: firstElement) )
				remainingSpace: remainingSpace ]
	 ] ifFalse: [ 
		self layoutRow: row.
		self 
			squarify: children
			currentRow: (OrderedCollection new)
			remainingSpace: self getRemainingSpace.
	 ].
	firstElement pushBack