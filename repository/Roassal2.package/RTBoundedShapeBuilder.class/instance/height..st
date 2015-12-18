accessing
height: aBlock
	^ super height: [ :v | (aBlock rtValue: v) max: self minimumSize ]