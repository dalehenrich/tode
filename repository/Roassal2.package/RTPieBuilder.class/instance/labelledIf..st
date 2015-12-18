public - shapes
labelledIf: aBlock
	objects do: [ :object |
		(aBlock rtValue: object) ifTrue: [ self label: object ] ]