accessing
size: aBlock
	^ super size: [ :v | (aBlock rtValue: v) max: self minimumSize ]